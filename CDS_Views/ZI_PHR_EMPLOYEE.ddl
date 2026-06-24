@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS View Interface For Employee'
@Metadata.ignorePropagatedAnnotations: true
@Search.searchable: true

define view entity ZI_PHR_EMPLOYEE
  as select from zphr_employee

  association [0..1] to ZI_PHR_DEPARTMENT as _Department
    on $projection.department_id = _Department.department_id

  association [0..1] to ZI_PHR_DESIGNATION as _Designation
    on $projection.designation_id = _Designation.designation_id

{
  @UI.lineItem: [{ position: 10 }]
  @UI.identification: [{ position: 10 }]
  key employee_id,

  @UI.lineItem: [{ position: 20 }]
  @UI.identification: [{ position: 20 }]
  @Search.defaultSearchElement: true
  first_name,

  @UI.lineItem: [{ position: 30 }]
  @UI.identification: [{ position: 30 }]
  @Search.defaultSearchElement: true
  last_name,

  @UI.lineItem: [{ position: 40 }]
  @UI.identification: [{ position: 40 }]
  email,

  @UI.lineItem: [{ position: 50 }]
  @UI.identification: [{ position: 50 }]
  mobile,

  @UI.lineItem: [{ position: 60 }]
  @UI.identification: [{ position: 60 }]
  department_id,

  @UI.lineItem: [{ position: 70 }]
  @UI.identification: [{ position: 70 }]
  designation_id,

  @UI.lineItem: [{ position: 80 }]
  @UI.identification: [{ position: 80 }]
  @UI.selectionField: [{ position: 10 }]
  _Department.department_name as DepartmentName,

  @UI.lineItem: [{ position: 90 }]
  @UI.identification: [{ position: 90 }]
  _Designation.designation_name as DesignationName,

  @UI.lineItem: [{ position: 100 }]
  @UI.identification: [{ position: 100 }]
  salary,

  @UI.lineItem: [{ position: 110 }]
  @UI.identification: [{ position: 110 }]
  join_date,

  @UI.lineItem: [{ position: 120 }]
  @UI.identification: [{ position: 120 }]
  status,

  _Department,
  _Designation
}
