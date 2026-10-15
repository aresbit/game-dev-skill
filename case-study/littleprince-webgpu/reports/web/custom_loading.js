/* EXTRACTED from index.html lines 193-504 (body inline <script>): language menu, applyLang,
 * t()/percent(), progress bar, message screen, extension shield, WebGPU gate, start().
 * Verbatim, read-only source. Companion module: loading.custom.js (cacheControl/downloadMeter/cacheReader).
 * Inline data globals (index.html line 192): LPWebDecodedSizes / LPWebBundleTransport / LPWebBundleContent.
 */
    <script src="loading.6e721a3f95b881dab963ae168055fb99.js"></script>
      var canvas = document.querySelector("#unity-canvas");
      var front = document.querySelector("#front");
      var stage = document.querySelector("#stage");
      var hint = document.querySelector("#hint");
      var load = document.querySelector("#load");
      var fill = document.querySelector("#fill");
      var tip = document.querySelector("#tip");
      var pct = document.querySelector("#pct span");
      var msg = document.querySelector("#msg");
      var langSwitch = document.querySelector("#lang");

      // The page's words in every shipped language (ENGLISH_COPY 3.1; LP_I18N above, from tools/shared/web/page-text): a word a
      // language lacks is the fallback language's.
      function t(key) {
        var own = LP_I18N.langs[window.__lpLang].text[key];
        return own !== undefined ? own : LP_I18N.langs[LP_I18N.fallback].text[key];
      }
      // 「40%」, or the language's own form ("percent": French 「40 %」)
      function percent(v) { return (LP_I18N.langs[window.__lpLang].percent || "{0}%").replace("{0}", v); }
      var shownProgress = 0, shownMessage = null;   // what is on screen, to write again in another language

      // The language menu: the current language's name (a button) and the list of every shipped language in LP_I18N's order.
      var langButton = document.createElement("button"), langList = document.createElement("ul");
      langButton.id = "lang-current"; langButton.type = "button";
      langButton.setAttribute("aria-haspopup", "listbox"); langButton.setAttribute("aria-expanded", "false");
      langList.id = "lang-list"; langList.setAttribute("role", "listbox"); langList.hidden = true;
      for (var li = 0; li < LP_I18N.order.length; li++) {
        var code = LP_I18N.order[li], L = LP_I18N.langs[code], item = document.createElement("li");
        item.setAttribute("role", "option"); item.setAttribute("data-lang", code); item.setAttribute("lang", L.html);
        item.setAttribute("data-script", L.script); item.tabIndex = -1; item.textContent = L.name;
        langList.appendChild(item);
      }
      langSwitch.appendChild(langButton); langSwitch.appendChild(langList);
      function langItems() { return langList.querySelectorAll("li"); }
      function openLang() {
        langList.hidden = false; langButton.setAttribute("aria-expanded", "true");
        var items = langItems();
        for (var i = 0; i < items.length; i++) if (items[i].getAttribute("data-lang") === window.__lpLang) { items[i].focus(); return; }
        if (items.length) items[0].focus();
      }
      function closeLang(refocus) {
        if (langList.hidden) return;
        langList.hidden = true; langButton.setAttribute("aria-expanded", "false");
        if (refocus) langButton.focus();
      }
      function pickLang(lang) {
        closeLang(true);
        if (lang && lang !== window.__lpLang) window.__lpSetLang(lang);
      }

      // Every word of the page in the current language; the switch shows which one is on.
      function applyLang() {
        var L = LP_I18N.langs[window.__lpLang];
        document.documentElement.lang = L.html;
        document.documentElement.setAttribute("data-script", L.script);
        document.title = t("title");
        var logo = document.querySelector("#logo");
        logo.alt = t("title");
        // the logotype of the language (tools/shared/ui/make_logo.py) at its width (min(its 1x width, 820); unset: the CSS)
        if (logo.getAttribute("src") !== L.logo) logo.setAttribute("src", L.logo);
        logo.style.width = L.logoWidth ? L.logoWidth + "px" : "";
        var parts = document.querySelectorAll("[data-text]");
        for (var i = 0; i < parts.length; i++) parts[i].textContent = t(parts[i].getAttribute("data-text"));
        pct.textContent = t("progress") + percent(shownProgress);
        if (shownMessage) drawMessage();
        langButton.textContent = L.name;
        langButton.setAttribute("lang", L.html); langButton.setAttribute("data-script", L.script);
        var items = langItems();
        for (var j = 0; j < items.length; j++) {
          var on = items[j].getAttribute("data-lang") === window.__lpLang;
          items[j].classList.toggle("on", on); items[j].setAttribute("aria-selected", on ? "true" : "false");
        }
      }

      // The language changes here (the switch) or in the game's settings page (WebPlatform.jslib LPWebSetLang): kept for the next visit.
      window.__lpSetLang = function (lang) {
        window.__lpLang = LP_I18N.langs[lang] ? lang : LP_I18N.fallback;
        try { localStorage.setItem("lp-lang", window.__lpLang); } catch (e) {}
        applyLang();
      };
      langSwitch.addEventListener("click", function (e) {
        e.stopPropagation(); e.preventDefault();   // the whole page starts the game; the menu must not
        if (e.target === langButton) { if (langList.hidden) openLang(); else closeLang(true); return; }
        var lang = e.target && e.target.getAttribute && e.target.getAttribute("data-lang");
        if (lang) pickLang(lang);
      });
      langSwitch.addEventListener("keydown", function (e) {
        var items = Array.prototype.slice.call(langItems()), at = items.indexOf(document.activeElement);
        if (e.target === langButton && (e.key === "ArrowDown" || e.key === "Enter" || e.key === " ")) { openLang(); }
        else if (langList.hidden) return;
        else if (e.key === "ArrowDown") items[Math.min(items.length - 1, at + 1)].focus();
        else if (e.key === "ArrowUp") items[Math.max(0, at - 1)].focus();
        else if (e.key === "Home") items[0].focus();
        else if (e.key === "End") items[items.length - 1].focus();
        else if ((e.key === "Enter" || e.key === " ") && at >= 0) pickLang(items[at].getAttribute("data-lang"));
        else if (e.key === "Escape") closeLang(true);
        else if (e.key === "Tab") { closeLang(false); return; }
        else return;
        e.preventDefault(); e.stopPropagation();
      });
      // a click elsewhere while the list is open only closes it (it does not start the game)
      document.addEventListener("click", function (e) {
        if (langList.hidden || langSwitch.contains(e.target)) return;
        closeLang(false); e.stopPropagation(); e.preventDefault();
      }, true);
      applyLang();

      // The 1920x1080 stage scaled to fit, centred.
      function fit() {
        var s = Math.min(window.innerWidth / 1920, window.innerHeight / 1080);
        var ox = (window.innerWidth - 1920 * s) / 2, oy = (window.innerHeight - 1080 * s) / 2;
        stage.style.transform = "translate(" + ox + "px," + oy + "px) scale(" + s + ")";
      }
      window.addEventListener("resize", fit); fit();

      // A few twinkling stars in the left (empty) third and some slowly rising dust.
      (function () {
        var pos = [[8,12],[14,38],[6,58],[20,74],[27,22],[11,88],[31,52],[35,8],[24,96],[3,30],[17,60],[33,84]];
        for (var i = 0; i < pos.length; i++) {
          var d = document.createElement("i"); d.className = "tw";
          var r = 2 + (i % 2); d.style.cssText = "left:" + pos[i][0] + "vw;top:" + pos[i][1] + "vh;width:" + r + "px;height:" + r + "px;animation-delay:" + (i * .37 % 3.2) + "s";
          front.insertBefore(d, stage);
        }
        for (var j = 0; j < 14; j++) {
          var p = document.createElement("i"); p.className = "dust";
          p.style.cssText = "left:" + (4 + (j * 37) % 92) + "vw;top:" + (30 + (j * 53) % 70) + "vh;animation-duration:" + (14 + (j * 7) % 12) + "s;animation-delay:" + (-(j * 3.1) % 14) + "s";
          front.insertBefore(p, stage);
        }
      })();

      // A message in place of the start line: a TEXT key, or a load failure with its detail. The first one stays: a
      // failure usually brings more (the loader's notice, then the rejection it leads to); the rest go to the console.
      function showMessage(key, detail) {
        if (!key) console.error("[LittlePrince] load failed:", detail);   // the full original, whatever is shown
        if (shownMessage) return;
        hint.classList.add("hidden"); load.classList.add("hidden");
        var text = key ? null : failureText(detail);
        // A download that failed (blocked by an extension, connection gone) mostly surfaces as an unrelated TypeError
        // further on: the loader logs "Failed to download file" and carries on with nothing. The fetch wrapper in
        // start() notes such a failure, so it reads as a network problem too.
        var network = !key && (/Failed to fetch|Failed to download|NetworkError|Load failed|net::ERR_|Unable to load file/i.test(text) ||
                               !!(window.__lpNet && window.__lpNet.failed));
        shownMessage = { key: key, detail: text, network: network };
        drawMessage(); msg.style.display = "flex";
        front.classList.add("busy");
      }
      // The detail is Unity's or the browser's words (an extension's stack can hold "<anonymous>"), so it goes in as
      // text, never as HTML: the error on the first line, a few stack lines under it.
      function drawMessage() {
        var box = msg.querySelector(".text");
        if (shownMessage.key) { box.innerHTML = t(shownMessage.key); return; }
        var lines = [], raw = shownMessage.detail.split("\n");
        for (var i = 0; i < raw.length; i++) if (raw[i].trim()) lines.push(raw[i].trim());
        box.textContent = "";
        function line(text, cls) {
          var div = document.createElement("div");
          if (cls) div.className = cls;
          div.textContent = text;
          box.appendChild(div);
        }
        line(t("failed") + t(shownMessage.network ? "network" : "retry"));
        line(lines[0] || "", "detail");
        if (lines.length > 1) line(lines.slice(1, 7).join("\n"), "stack");
      }
      // A rejection's reason may be a string (Unity's), an Error, or an event: as one string.
      function failureText(detail) {
        if (detail && typeof detail === "object" && typeof detail.message === "string") {
          var stack = detail.stack ? String(detail.stack) : "";
          return stack.indexOf(detail.message) >= 0 ? stack : detail.message + (stack ? "\n" + stack : "");
        }
        return String(detail);
      }
      function setProgress(p) {
        var v = Math.max(0, Math.min(100, Math.round(p * 100)));
        shownProgress = v;
        fill.style.width = v + "%"; tip.style.left = v + "%"; pct.textContent = t("progress") + percent(v);
      }

      // Errors thrown by browser extensions are not ours (crypto wallets fighting over window.ethereum — "Cannot redefine
      // property: ethereum" from Phantom/MetaMask —, user scripts…), but Unity's loader listens to every error on window:
      // while the player starts it rejects createUnityInstance (the page then said 「加载失败」 with the extension's stack),
      // and afterwards it alerts "An error occurred running the Unity content". Stop them before the loader sees them:
      // capture phase, registered before loader.js adds its listeners. They still reach the console.
      (function () {
        var extension = /\b(chrome|moz|safari-web|ms-browser)-extension:\/\//;
        function fromExtension(e) {
          var error = e.reason || e.error;
          var where = [e.filename, error && error.fileName, error && error.sourceURL, error && error.stack].join(" ");
          if (extension.test(where)) return true;
          // "Script error." with no file: the browser hides the details of an error from a cross-origin script. Every
          // script of ours (page, loader, framework) is same-origin, so this can only be an extension's or a user
          // script's. If Build/ ever moves to another origin (a CDN in China), this no longer holds: our own framework
          // errors would read "Script error." too (unless served with CORS + crossorigin) — revisit this line then.
          return e.type === "error" && e.message === "Script error." && !e.filename;
        }
        // Rejections are dropped only when the reason's stack/fileName names an extension (above). A reason that is not
        // an Error, or has no stack, is left to Unity: its own startup failures can look exactly like that, and a hung
        // or silent start is worse than a stray 「加载失败」.
        function shield(e) {
          if (!fromExtension(e)) return;
          e.stopImmediatePropagation();
          console.warn("[LittlePrince] ignoring an error from a browser extension:", e.reason || e.error || e.message);
        }
        window.addEventListener("error", shield, true);
        window.addEventListener("unhandledrejection", shield, true);
      })();

      // Keep Tab inside the game instead of moving the browser's focus ring.
      canvas.addEventListener("keydown", function (e) { if (e.key === "Tab") e.preventDefault(); });

      // WebGPU is required: there is no WebGL2 fallback (see scenes/shared/dev/WEB_BUILD.md). navigator.gpu alone does
      // not mean it works: with the GPU blocklisted, WebGPU turned off by a flag or policy, or the GPU process gone,
      // requestAdapter() answers null or throws. The loader's own check has no catch (a throw left the page at 0% for
      // good) and loads the build even without an adapter (it then crashes at run time). So ask here, as the page
      // opens, without waiting for the click: true or false, never rejects.
      var webgpuReady = new Promise(function (resolve) {
        if (!navigator.gpu) { resolve(false); return; }
        function fail(e) { console.warn("[LittlePrince] WebGPU: requestAdapter() failed:", e); resolve(false); }
        try {
          Promise.resolve(navigator.gpu.requestAdapter()).then(function (adapter) {
            if (!adapter) console.warn("[LittlePrince] WebGPU: requestAdapter() gave no adapter");
            resolve(!!adapter);
          }, fail);
        } catch (e) { fail(e); }
      });
      if (!window.LPWebLoading) {
        showMessage("helper");   // loading.6e721a3f95b881dab963ae168055fb99.js (cache policy, download meter) did not load: the build cannot start safely
      } else if (!navigator.gpu) {
        showMessage("webgpu");
      } else {
        front.addEventListener("click", start, { once: true });
        // Known to fail before any click: the same notice at once, as for a browser without navigator.gpu. (After a
        // click, start() shows it.)
        webgpuReady.then(function (ok) {
          if (ok || front.classList.contains("busy")) return;
          front.removeEventListener("click", start);
          showMessage("webgpu");
        });
      }

      function start(checked) {
        // A click can come before the adapter check has answered (it rarely does): wait for it, then go on.
        if (checked !== true) {
          front.classList.add("busy");
          webgpuReady.then(function (ok) { if (ok) start(true); else showMessage("webgpu"); });
          return;
        }
        front.classList.add("busy");
        hint.classList.add("hidden");
        langSwitch.classList.add("hidden");   // from here the game owns the language (its settings page)
        load.classList.remove("hidden");
        setProgress(0);

        var buildUrl = "Build";
        var config = {
          dataUrl: buildUrl + "/9cefc5588b44da878d14ae37617b1c6a.data.br",
          frameworkUrl: buildUrl + "/6e34f3d41938755d23fbd3ea588dc5bc.framework.js.br",
          codeUrl: buildUrl + "/57e146996bf180116a0302c7ec6e2cd1.wasm.br",
          streamingAssetsUrl: "StreamingAssets",
          companyName: "LittlePrince",
          // the cache identity, not the title: Unity's browser cache is named UnityCache_<company>_<product>; it stays
          // "小王子" since the title became 《小王子：星辰之旅》 (2026-10-13), or every returning player would download it all again
          productName: "小王子",
          productVersion: LPWebLoading.cacheVersion,
          cacheControl: LPWebLoading.cacheControl,
          preRun: [function (module) { LPWebLoading.installCacheReader(module); }],
          // Cap the render target at 2x so high-DPI screens do not pay for 3x/4x pixels.
          devicePixelRatio: Math.min(window.devicePixelRatio || 1, 2),
          // Persist the save (journey.json) to the browser's IndexedDB between visits.
          autoSyncPersistentDataPath: true,
          // The loader's notices. Without this hook its errors only reached the console and the page sat at its last
          // percentage: the framework blocked or missing ("Unable to load file …"), unparsable, or the data file served
          // without its Content-Encoding. The loader sends one error at most; showMessage keeps the first on screen.
          showBanner: function (text, type) {
            if (type === "error") showMessage(null, text);
            else if (type === "warning") console.warn(text);
            else console.log(text);
          },
        };

        // Download meter (chapter pack bytes for the loading page) and the failed-download note for showMessage
        // (window.__lpNet.failed): both in loading.6e721a3f95b881dab963ae168055fb99.js.
        LPWebLoading.installDownloadMeter();

        var script = document.createElement("script");
        script.src = buildUrl + "/a0a6878ef9d9dce037804e0fe80e6d3c.loader.js";
        script.onload = function () {
          // onload also fires for a file that did not define the loader: emptied by a blocking extension, or an HTML
          // error page in its place.
          if (typeof createUnityInstance !== "function") {
            console.error("[LittlePrince] " + script.src + " loaded but defines no createUnityInstance (blocked or replaced?)");
            showMessage("missing");
            return;
          }
          createUnityInstance(canvas, config, setProgress).then(function (instance) {
            window.__lpUnity = instance;   // diagnostics: instance.Module.HEAPU8.byteLength is the wasm heap
            // Fill the line, hold a beat, then fade into the ink the map rises from.
            setProgress(1);
            setTimeout(function () {
              front.classList.add("out");
              setTimeout(function () { front.style.display = "none"; canvas.focus(); }, 800);
            }, 300);
          }).catch(function (message) {
            showMessage(null, message);
          });
        };
        script.onerror = function () { showMessage("missing"); };
        document.body.appendChild(script);
      }

