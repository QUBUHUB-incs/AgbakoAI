const express = require('express');
const cors = require('cors');
const dotenv = require('dotenv');
const authRoutes = require('./routes/authRoutes');
dotenv.config();

const app = express();
app.use(cors());
app.use(express.json());

app.use('/api', authRoutes);

app.listen(5000, () => {
  console.log('Server running on port 5000');
});
