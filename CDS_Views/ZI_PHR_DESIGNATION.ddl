@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS View interface For zphr_designation'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_PHR_DESIGNATION as select from zphr_designation
association [0..1] to ZI_PHR_DESIGNATION as _Designation
  on $projection.designation_id = _Designation.designation_id
{
    key designation_id,
        designation_name
}

