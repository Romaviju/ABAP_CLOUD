CLASS z_jar_cl_art DEFINITION

  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.

CLASS z_jar_cl_art IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    DATA: lt_art TYPE TABLE OF zjar_tb_art.

    "   Creacion de Datos
    lt_art = VALUE #( ( client  = sy-mandt
                        id      = |1|
                        descr   = |Komi Can't Communicate|
                        ldesc   = |Komi Can't Communicate N.26|
                        color   = |Cafe|
                        piezas  = |1|
                        stock   = |1|
                        url     = |https://tiendapanini.com.mx/media/catalog/product/q/k/qkomi026_1200.jpg?optimize=medium&bg-color=255,255,255&fit=bounds&height=897&width=960&canvas=960:897&dpr=1%201x|
                      )
                      ( client  = sy-mandt
                        id      = |2|
                        descr   = |One Piece|
                        ldesc   = |One Piece N.108|
                        color   = |Verde|
                        piezas  = |1|
                        stock   = |1|
                        url     = |https://tiendapanini.com.mx/media/catalog/product/q/m/qmopi108_1200.jpg?optimize=medium&bg-color=255,255,255&fit=bounds&height=897&width=960&canvas=960:897&dpr=1%201x|
                      )
                      ( client  = sy-mandt
                        id      = |3|
                        descr   = |Full Metal Alchemist|
                        ldesc   = |Full Metal Alchemist Lux Edition N.4|
                        color   = |Amarillo|
                        piezas  = |1|
                        stock   = |1|
                        url     = |https://tiendapanini.com.mx/media/catalog/product/q/f/qfmet004_1200.jpg?optimize=medium&bg-color=255,255,255&fit=bounds&height=897&width=960&canvas=960:897&dpr=1%201x|
                      )
                    ).

    "   Registro en DB
    INSERT zjar_tb_art
      FROM TABLE @lt_art.

    IF sy-subrc EQ 0.

      out->write( |Tabla Actualizada Correctamente.| ).

    ELSE.

      out->write( |Tabla Actualizada Correctamente.| ).

    ENDIF.

  ENDMETHOD.

ENDCLASS.
