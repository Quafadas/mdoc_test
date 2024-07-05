import { mdoc_js_run0 } from "./readme.md.js";

(function (global) {
  function findDivs() {
    return Array.from(global.document.querySelectorAll("div[data-mdoc-js]"));
  }

  function loadAll(scope) {
    findDivs().forEach(function (el) {
      const idNum = el.getAttribute("id");
      console.log(idNum);
      var id = el.getAttribute("id").replace("-html-", "_js_");
      // eval(id)(el);
      mdoc_js_run0(el);
    });
    s;
  }

  loadAll(global);
})(window);
