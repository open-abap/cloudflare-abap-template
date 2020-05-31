INTERFACE zif_abap_serverless_v1 PUBLIC.

  TYPES: BEGIN OF ty_header,
           field TYPE string,
           value TYPE string,
         END OF ty_header.

  TYPES ty_headers TYPE STANDARD TABLE OF ty_header WITH DEFAULT KEY.

  TYPES: BEGIN OF ty_http,
           headers TYPE ty_headers,
           body    TYPE string,
         END OF ty_http.

  METHODS
    run
      IMPORTING
        method      TYPE string OPTIONAL
        path        TYPE string OPTIONAL
        query       TYPE string OPTIONAL
        request     TYPE ty_http OPTIONAL
      RETURNING
        VALUE(response) TYPE ty_http
      RAISING
        cx_static_check.

ENDINTERFACE.