const transpiler = require("@abaplint/transpiler");

module.exports = async function(source, map, meta) {
  const t = new transpiler.Transpiler();
  const result = await t.run([{filename: this.resourcePath, contents: source}]);
  return "export " + result.js[0].contents;
}