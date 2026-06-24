@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS View interface For zphr_department'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_PHR_DEPARTMENT
  as select from zphr_department
{
    key department_id,
        department_name
}
