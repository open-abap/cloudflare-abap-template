CLASS zcl_more DEFINITION PUBLIC.

  PUBLIC SECTION.
    METHODS foobar RETURNING VALUE(moo) TYPE string.

ENDCLASS.

CLASS zcl_more IMPLEMENTATION.

  METHOD foobar.
    moo = 'moo'.
  ENDMETHOD.

ENDCLASS.