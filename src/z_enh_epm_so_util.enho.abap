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
*"methods EPM_SO_UPDATE
*"  importing
*"    !IT_SO_HEADER type /IWBEP/IF_EPM_SO_UTIL=>TT_EPM_SO_HEADER optional
*"    !IT_SO_ITEM type /IWBEP/IF_EPM_SO_UTIL=>TT_EPM_SO_ITEM optional
*"  changing
*"    !ET_RETURN type BAPIRET2_T
*"    !ET_SO_HEADER type /IWBEP/IF_EPM_SO_UTIL=>TT_EPM_SO_HEADER
*"    !ET_SO_ITEM type /IWBEP/IF_EPM_SO_UTIL=>TT_EPM_SO_ITEM
*"    !EV_SUCCESS type /IWBEP/IF_EPM_SO_UTIL=>TS_SUCCESS .
*"------------------------------------------------------------------------*

  ENDMETHOD.
ENDCLASS.
