@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Employee Consumption View'

@UI.headerInfo: {
  typeName: 'Employee',
  typeNamePlural: 'Employees',
  title: {
    value: 'first_name'
  },
  description: {
    value: 'DepartmentName'
  }
}

define view entity ZC_PHR_EMPLOYEE
  as select from ZI_PHR_EMPLOYEE
{
    key employee_id,

    first_name,
    last_name,

    email,
    mobile,

    department_id,
    designation_id,

    DepartmentName,
    DesignationName,

    salary,
    join_date,
    status
}
