import React from 'react';
import logo from './logo.svg';
import './App.css';
import { BrowserRouter as Router,Routes, Route} from "react-router-dom";
import ListEmployeeComponent from './components/ListEmployeeComponent';
import HeaderComponent from './components/HeaderComponent';
import FooterComponent from './components/FooterComponent';
import CreateEmployeeComponent from './components/CreateEmployeeComponent';
import UpdateEmployeeComponent from './components/UpdateEmployeeComponent';

function App() {
  return (
    <div>
      <Router>
            <HeaderComponent/>
            <div className="container">
            <Routes>
                  <Route path="/" exact element={<ListEmployeeComponent/>}/>
                  <Route path="/employees" element={<ListEmployeeComponent/>}/>                
                  <Route path="/createEmployee" element={<CreateEmployeeComponent/>}/>   
                  <Route path="/employee/:id"  element= { <UpdateEmployeeComponent  /> } />
              </Routes>
            </div>
            <FooterComponent/>
      </Router>
    </div>
  );
}

export default App;
