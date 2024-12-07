CLASS lcl_z_enh_epm_so_util DEFINITION DEFERRED.
CLASS /iwbep/cl_epm_so_utility DEFINITION LOCAL FRIENDS lcl_z_enh_epm_so_util.
CLASS lcl_z_enh_epm_so_util DEFINITION.
  PUBLIC SECTION.
    CLASS-DATA obj TYPE REF TO lcl_z_enh_epm_so_util.       "#EC NEEDED
    DATA core_object TYPE REF TO /iwbep/cl_epm_so_utility . "#EC NEEDED
 INTERFACES  IPO_Z_ENH_EPM_SO_UTIL.
    METHODS:
      constructor IMPORTING core_object
                              TYPE REF TO /iwbep/cl_epm_so_utility OPTIONAL.
ENDCLASS.
CLASS lcl_z_enh_epm_so_util IMPLEMENTATION.
  METHOD constructor.
    me->core_object = core_object.
  ENDMETHOD.

  METHOD ipo_z_enh_epm_so_util~epm_so_update.
*"------------------------------------------------------------------------*
*" Declaration of POST-method, do not insert any comments here please!
*"
*"METHODS epm_so_update
*"  IMPORTING
*"    !it_so_header TYPE /iwbep/if_epm_so_util=>tt_epm_so_header OPTIONAL
*"    !it_so_item   TYPE /iwbep/if_epm_so_util=>tt_epm_so_item OPTIONAL
*"  CHANGING
*"    !et_return    TYPE bapiret2_t
*"    !et_so_header TYPE /iwbep/if_epm_so_util=>tt_epm_so_header
*"    !et_so_item   TYPE /iwbep/if_epm_so_util=>tt_epm_so_item
*"    !ev_success   TYPE /iwbep/if_epm_so_util=>ts_success.
*"------------------------------------------------------------------------*

  ENDMETHOD.
ENDCLASS.
