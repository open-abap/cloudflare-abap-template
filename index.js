global.abap = require('@abaplint/runtime');
const handler = require("./src/zcl_handler.clas.abap");

addEventListener('fetch', event => {
  event.respondWith(handleRequest(event.request))
});

async function handleRequest(request) {
  const response = new handler.zcl_handler().zif_abap_serverless_v1$run({
    method: request.method,
    path: request.url,
    query: ''});

  const headers = {};
  for (const h of response.get().headers.array()) {
    headers[h.get().field.get()] = h.get().value.get();
  }

  return new Response(response.get().body.get(), {headers});
}