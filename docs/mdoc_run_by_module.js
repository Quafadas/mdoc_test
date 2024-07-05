(function (global) {
  function findDivs() {
    return Array.from(global.document.querySelectorAll("div[data-mdoc-js]"));
  }

  function loadAll(scope) {
    findDivs().forEach(function (el) {
      const idNum = el.getAttribute("id");
      const num = idNum.at(-1);
      console.log(num);
      var id = el.getAttribute("id").replace("-html-", "_js_");

      // https://stackoverflow.com/questions/2033711/how-can-i-attach-meta-data-to-a-dom-node
      const moduleName = el.getAttribute("data-mdoc-module-name");

      // import(moduleName).then(function (module) {
      import("./readme.md.js").then(function (module) {
        module[id](el);
      });
    });
  }

  loadAll(global);
})(window);
