// Import required modules
const express = require('express');
const bodyParser = require('body-parser');

// Initialize the app
const app = express();
const PORT = 3000;

// Middleware to parse JSON bodies
app.use(bodyParser.json());

// In-memory array to store employee data
let employees = [];

// Create a new employee
app.post('/employees', (req, res) => {
    const { name, position, department, salary } = req.body;
    const newEmployee = {
        id: employees.length + 1,
        name,
        position,
        department,
        salary
    };
    employees.push(newEmployee);
    res.status(201).json(newEmployee);
});

// Read all employees
app.get('/employees', (req, res) => {
    res.status(200).json(employees);
});

// Read a single employee by ID
app.get('/employees/:id', (req, res) => {
    const employeeId = parseInt(req.params.id, 10);
    const employee = employees.find(e => e.id === employeeId);
    if (!employee) {
        return res.status(404).json({ message: 'Employee not found' });
    }
    res.status(200).json(employee);
});

// Update an employee by ID
app.put('/employees/:id', (req, res) => {
    const employeeId = parseInt(req.params.id, 10);
    const index = employees.findIndex(e => e.id === employeeId);
    if (index === -1) {
        return res.status(404).json({ message: 'Employee not found' });
    }

    const { name, position, department, salary } = req.body;
    employees[index] = {
        ...employees[index],
        name,
        position,
        department,
        salary
    };
    res.status(200).json(employees[index]);
});

// Delete an employee by ID
app.delete('/employees/:id', (req, res) => {
    const employeeId = parseInt(req.params.id, 10);
    const index = employees.findIndex(e => e.id === employeeId);
    if (index === -1) {
        return res.status(404).json({ message: 'Employee not found' });
    }
    
    employees.splice(index, 1);
    res.status(204).send(); // No content to send back
});

// Start the server
app.listen(PORT, () => {
    console.log(`Server is running on http://localhost:${PORT}`);
});