import React, { Component } from 'react'


import EmployeeService from '../services/EmployeeService'
export default class ListEmployeeComponent extends Component {
    constructor(props) {
        super(props)

        this.state = {
            employees : [],
            page_number: 0
        }

        this.handlePageChange = this.handlePageChange.bind(this);
        this.handleRouteChange = this.handleRouteChange.bind(this);
        this.editEmployee= this.editEmployee.bind(this);  
        this.deleteEmployee=this.deleteEmployee.bind(this); 
    }
    componentDidMount(){   
        EmployeeService.getEmployees().then((res) => {
            
            this.setState({ employees: res.data});
        }); 
    }

    handlePageChange() {
      window.location.href = "/createEmployee";
    }
  
    handleRouteChange(event) {
      const destination = event.newURL;
      if (destination) {
        this.setState({ page_number: 1 });
      }
    }
    editEmployee(id){
        window.location.href = `/employee/${id}`;
    }
    deleteEmployee(id){
        EmployeeService.deleteEmployee(id).then( res => {
            this.setState({ employees: this.setState.employees.filter(employee => employee.employee_id !== id)});
        });
    }
    
    
  render() {
    return (   
        <div>
        <h2 className='text-center' >List Employees </h2>
        <div className='row'>
            <button className='btn btn-primary' onClick={this.handlePageChange}>Add Employee</button>
        </div>
        <div className='row'>
            <table className='table table-striped table bordered'>
                <thead>
                    <tr>
                        <th>Id</th>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Email</th>
                        <th>PhoneNumber</th>
                        <th >Hire Date</th>
                        <th>JobId</th>
                        <th>Salary</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    {
                        this.state.employees.map(
                            employee => 
                            <tr key = {employee.employee_id}>
                                <td>{employee.employee_id}</td>
                                <td>{employee.first_name}</td>
                                <td>{employee.last_name}</td>
                                <td>{employee.email}</td>
                                <td>{employee.phone_number}</td>
                                <td>{employee.hire_date}</td>
                                <td>{employee.job_id}</td>
                                <td>{employee.salary}</td>
                                <td>
                                    <button onClick={() => this.editEmployee(employee.employee_id)} 
                                    className="btn btn-info" >Update</button>    
                                </td>
                                <td>
                                    <button onClick={() => this.deleteEmployee(employee.employee_id)} 
                                    className="btn btn-danger" >Delete</button>    
                                </td>
                            </tr>
                            
                        )
                    }
                </tbody>
            </table>
        </div>
</div>
    )
  }
}




