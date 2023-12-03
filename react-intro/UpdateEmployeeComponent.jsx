import React, { Component } from 'react'
import EmployeeService from '../services/EmployeeService';

export default class UpdateEmployeeComponent extends Component {
    constructor(props) {
        super(props)

        this.state = {
            employee_id:'',
            first_name: '',
            last_name: '',
            email: '',
            phone_number:'',
            hire_date:'',
            job_id:'',
            salary:''
        }

        this.changeEmployeeIdHandler = this.changeEmployeeIdHandler.bind(this);
        this.changeFirstNameHandler = this.changeFirstNameHandler.bind(this);
        this.changeLastNameHandler = this.changeLastNameHandler.bind(this);
        this.changeEmailHandler = this.changeEmailHandler.bind(this);
        this.changePhoneNumberHandler = this.changePhoneNumberHandler.bind(this);
        this.changeHireDateHandler = this.changeHireDateHandler.bind(this);

        this.updateEmployee = this.updateEmployee.bind(this);
    }
    changeEmployeeIdHandler= (event) => {
        this.setState({employee_id: event.target.value});
    }
    
    changeFirstNameHandler= (event) => {
        this.setState({first_name: event.target.value});
    }

    changeLastNameHandler= (event) => {
        this.setState({last_name: event.target.value});
    }

    changeEmailHandler= (event) => {
        this.setState({email: event.target.value});
    }
    changePhoneNumberHandler= (event) => {
        this.setState({phone_number: event.target.value});
    }
    changeHireDateHandler= (event) => {
        this.setState({hire_date: event.target.value});
    }
    changeJobIdHandler= (event) => {
        this.setState({job_id: event.target.value});
    }
    changeSalaryHandler= (event) => {
        this.setState({salary: event.target.value});
    }

    updateEmployee = (e) => {
        e.preventDefault();
        let employee = {employee_id: this.state.employee_id, first_name: this.state.first_name, 
            last_name: this.state.last_name, email: this.state.email, 
            phone_number: this.state.phone_number, hire_date: this.state.hire_date, 
            job_id: this.state.job_id, salary: this.state.salary};
        console.log('EMPLOYEES => ' + JSON.stringify(employee));

        
        EmployeeService.updateEmployee(employee, this.state.employee_id).then(res => {
            window.location.href = "/employeeAll";
        });
    }

    componentDidCatch(){
        EmployeeService.getEmployeeById(this.state.employee_id).then((res) => {
            let employee = res.data;
            this.setState({
                employee_id: employee.employee_id,
                first_name: employee.first_name,
                last_name: employee.last_name,
                email: employee.email,
                phone_number: employee.phone_number,
                hire_date: employee.hire_date,
                job_id: employee.job_id,
                salary: employee.salary
            });
        });

        
    }  

  render() {
        return (
            <div>
            <br></br>
                <div className = "container">
                        <div className = "row">
                            <div className = "card col-md-6 offset-md-3 offset-md-3">
                                <h3>Update Employee</h3>
                                <div className = "card-body">
                                    <form>
                                    <div className = "form-group">
                                            <label> Employee Id: </label>
                                            <input placeholder="Empoloyee Id" name="employee_id" className="form-control" 
                                                value={this.state.employee_id} onChange={this.changeEmployeeIdHandler}/>
                                        </div>
                                        <div className = "form-group">
                                            <label> First Name: </label>
                                            <input placeholder="First Name" name="first_name" className="form-control" 
                                                value={this.state.first_name} onChange={this.changeFirstNameHandler}/>
                                        </div>
                                        <div className = "form-group">
                                            <label> Last Name: </label>
                                            <input placeholder="Last Name" name="last_name" className="form-control" 
                                                value={this.state.last_name} onChange={this.changeLastNameHandler}/>
                                        </div>
                                        <div className = "form-group">
                                            <label> Email Id: </label>
                                            <input placeholder="Email Address" name="email" className="form-control" 
                                                value={this.state.email} onChange={this.changeEmailHandler}/>
                                        </div>
                                        <div className = "form-group">
                                            <label> Phone Number: </label>
                                            <input placeholder="Phone Number" name="phone_number" className="form-control" 
                                                value={this.state.phone_number} onChange={this.changePhoneNumberHandler}/>
                                        </div>
                                        <div className = "form-group">
                                            <label> Hire Date: </label>
                                            <input placeholder="Hire Date" name="hire_date" className="form-control" 
                                                value={this.state.hire_date} onChange={this.changeHireDateHandler}/>
                                        </div>
                                        <div className = "form-group">
                                            <label> Job Id: </label>
                                            <input placeholder="Job Id" name="job_id" className="form-control" 
                                                value={this.state.job_id} onChange={this.changeJobIdHandler}/>
                                        </div>
                                        <div className = "form-group">
                                            <label> Salary: </label>
                                            <input placeholder="Salary" name="salary" className="form-control" 
                                                value={this.state.salary} onChange={this.changeSalaryHandler}/>
                                        </div>

                                        <button className="btn btn-info" onClick={this.updateEmployee}>Update</button>
                                    </form>
                                </div>
                            </div>
                        </div>

                </div>
        </div>
    )
  }
}



