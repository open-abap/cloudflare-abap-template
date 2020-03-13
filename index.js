const runtime = require("@abaplint/runtime");
const abap = require("./src/zcl_index.clas.abap");

addEventListener('fetch', event => {
  event.respondWith(handleRequest(event.request))
});

async function handleRequest(request) {
  new abap.zcl_index().run();
  const result = runtime.Console.get();
  return new Response(result, {
    headers: { 'content-type': 'text/plain' },
  });
}