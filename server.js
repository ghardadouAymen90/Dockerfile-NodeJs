const express = require('express');
const cors = require('cors');

const app = express();

app.use(cors());
app.use(express.json()); //Used to parse JSON bodies instead of body-parser
app.use(express.urlencoded({ extended: true })); //Parse URL-encoded bodies



app.get('/status', (req, res) => {
    res.send("OK");
});

app.listen(8000, () => {
    console.log('server is listening on port 8000');
})
