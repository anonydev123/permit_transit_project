const express = require('express');
const mongoose = require('mongoose');
const bodyParser = require('body-parser');
const ejs = require('ejs');
const fs = require('fs');
const path = require('path');
const { PDFDocument } = require('pdf-lib');
const cors = require('cors'); // Import pdf-lib

const app = express();
app.use(bodyParser.urlencoded({ extended: true }));
app.use(cors());
app.set('view engine', 'ejs');

// Serve static files (CSS, images)
app.use(express.static('public'));

// Connect to MongoDB
mongoose.connect('mongodb://localhost:27017/permitDB')
    .then(() => console.log('MongoDB connected successfully'))
    .catch(err => console.error('MongoDB connection error:', err));

// Define Schema and Model
const permitTransitSchema = new mongoose.Schema({
    permit_number: String,
    module: String,
    validity_from: Date,
    validity_till: Date,
    time_from: String,
    time_till: String,
    items: String,
    quantity: Number,
    value: String,
    mmca_name: String,
    name: String,
    address: String, // Added address field
    mobile: String,
    division: String,
    range: String,
    kist: String,
    etp_number: String,
    transit_module: String,
    transit_item: String,
    transit_quantity: Number,
    mahal: String,
    destination: String,
    valid_from_date: Date,
    valid_from_time: String,
    valid_to_date: Date,
    valid_to_time: String,
    vehicle_number: String,
    driver_info: String,
    transit_division: String,
    transit_range: String,
    transit_permit_number: String,
    status: { type: String, default: 'Submitted' }
});

const PermitTransit = mongoose.model('PermitTransit', permitTransitSchema);

// Route for form submission
app.post('/submit_form', async (req, res) => {
    const newPermitTransit = new PermitTransit({
        permit_number: req.body.permit_number,
        module: req.body.module,
        validity_from: req.body.validity_from,
        validity_till: req.body.validity_till,
        time_from: req.body.time_from,
        time_till: req.body.time_till,
        items: req.body.items,
        quantity: req.body.quantity,
        value: req.body.value,
        mmca_name: req.body.mmca_name,
        name: req.body.name,
        address: req.body.address, // Added address field in the submission
        mobile: req.body.mobile,
        division: req.body.division,
        range: req.body.range,
        kist: req.body.kist,
        etp_number: req.body.etp_number,
        transit_module: req.body.transit_module,
        transit_item: req.body.transit_item,
        transit_quantity: req.body.transit_quantity,
        mahal: req.body.mahal,
        destination: req.body.destination,
        valid_from_date: req.body.valid_from_date,
        valid_from_time: req.body.valid_from_time,
        valid_to_date: req.body.valid_to_date,
        valid_to_time: req.body.valid_to_time,
        vehicle_number: req.body.vehicle_number,
        driver_info: req.body.driver_info,
        transit_division: req.body.transit_division,
        transit_range: req.body.transit_range,
        transit_permit_number: req.body.transit_permit_number
    });

    try {
        await newPermitTransit.save();
        // Create the URL for the generated PDF
        const pdfUrl = `/pdf/${newPermitTransit._id}`;
        // Render the details page with data and PDF URL
        res.render('details', { data: newPermitTransit, pdfUrl });
    } catch (err) {
        console.error('Error occurred while saving the form data:', err);
        res.send('Error occurred while saving the form data.');
    }
});

// Route to generate and serve the filled PDF
app.get('/pdf/:id', async (req, res) => {
    try {
        // Fetch the data from MongoDB using the provided id
        const permitTransit = await PermitTransit.findById(req.params.id);

        if (!permitTransit) {
            return res.status(404).send('Permit not found.');
        }

        // Load the existing PDF form
        const pdfTemplatePath = path.join(__dirname, 'pdf', 'final.pdf');
        const pdfBytes = fs.readFileSync(pdfTemplatePath);
        const pdfDoc = await PDFDocument.load(pdfBytes);

        // Get the form from the PDF
        const form = pdfDoc.getForm();

        // Fill the form fields
        form.getTextField('permit_number').setText(permitTransit.permit_number);
        form.getTextField('module').setText(permitTransit.module);
        form.getTextField('validity_from').setText(permitTransit.validity_from.toLocaleDateString());
        form.getTextField('validity_till').setText(permitTransit.validity_till.toLocaleDateString());
        form.getTextField('time_from').setText(permitTransit.time_from);
        form.getTextField('time_till').setText(permitTransit.time_till);
        form.getTextField('items').setText(permitTransit.items);
        form.getTextField('quantity').setText(permitTransit.quantity.toString());
        form.getTextField('value').setText(permitTransit.value);
        form.getTextField('name').setText(permitTransit.name);
        form.getTextField('driver_info').setText(permitTransit.driver_info);
        form.getTextField('address').setText(permitTransit.address); // Added address field for PDF filling
       
        form.getTextField('range').setText(permitTransit.range);
        form.getTextField('kist').setText(permitTransit.kist);
        form.getTextField('etp_number').setText(permitTransit.etp_number);
        form.getTextField('mahal').setText(permitTransit.mahal);
        form.getTextField('vehicle_number').setText(permitTransit.vehicle_number);

        // Serialize the PDF to bytes (a Uint8Array)
        const pdfData = await pdfDoc.save();

        // Set the response headers and serve the PDF directly
        res.set({
            'Content-Type': 'application/pdf',
            'Content-Disposition': `inline; filename="filled_output.pdf"`, // Inline instead of attachment
        });

        res.send(Buffer.from(pdfData));
    } catch (err) {
        console.error('Error generating the PDF:', err);
        res.status(500).send('Error generating the PDF.');
    }
});

// Start server
app.listen(3001, () => {
    console.log('Server started on port 3001');
});

