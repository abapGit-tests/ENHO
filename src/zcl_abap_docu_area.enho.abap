CLASS LCL_ZCL_ABAP_DOCU_AREA DEFINITION DEFERRED.
CLASS CL_ABAP_DOCU_AREA DEFINITION LOCAL FRIENDS LCL_ZCL_ABAP_DOCU_AREA.
CLASS LCL_ZCL_ABAP_DOCU_AREA DEFINITION.
PUBLIC SECTION.
CLASS-DATA OBJ TYPE REF TO LCL_ZCL_ABAP_DOCU_AREA. "#EC NEEDED
DATA CORE_OBJECT TYPE REF TO CL_ABAP_DOCU_AREA . "#EC NEEDED
 INTERFACES  IPO_ZCL_ABAP_DOCU_AREA.
  METHODS:
   CONSTRUCTOR IMPORTING CORE_OBJECT
     TYPE REF TO CL_ABAP_DOCU_AREA OPTIONAL.
ENDCLASS.
CLASS LCL_ZCL_ABAP_DOCU_AREA IMPLEMENTATION.
METHOD CONSTRUCTOR.
  ME->CORE_OBJECT = CORE_OBJECT.
ENDMETHOD.

METHOD IPO_ZCL_ABAP_DOCU_AREA~GET_ROOT.
*"------------------------------------------------------------------------*
*" Declaration of POST-method, do not insert any comments here please!
*"
*"methods GET_ROOT
*"  changing
*"    value(ROOT) type ref to OBJECT
*"  raising
*"    CX_SHM_ALREADY_DETACHED . "#EC CI_VALPAR
*"------------------------------------------------------------------------*

ENDMETHOD.
ENDCLASS.
