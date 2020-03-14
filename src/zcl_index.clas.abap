CLASS zcl_index DEFINITION PUBLIC.

  PUBLIC SECTION.
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

ENDCLASS.

CLASS zcl_index IMPLEMENTATION.

  METHOD run.
    response-body = |hello world { method } { path } { query }|.

    DATA ls_header TYPE ty_header.
    ls_header-field = 'content-type'.
    ls_header-value = 'text/plain'.
    APPEND ls_header TO response-headers.
  ENDMETHOD.

ENDCLASS.