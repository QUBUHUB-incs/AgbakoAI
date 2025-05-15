require("dotenv").config();
const express = require("express");
const fs = require("fs");
const path = require("path");
const cors = require("cors");
const bodyParser = require("body-parser");

const app = express();
const PORT = process.env.PORT || 5000;
const UPLOAD_DIR = process.env.UPLOAD_DIR;

app.use(cors());
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));
app.use("/uploads", express.static(UPLOAD_DIR));

// Domain Management
app.post("/set-domain", (req, res) => {
  const { domain } = req.body;
  if (!domain) {
    return res.status(400).json({ message: "Domain is required" });
  }

  // Placeholder for domain management logic
  console.log(`Domain set to: ${domain}`);
  res.json({ message: `Domain ${domain} configured successfully.` });
});

// File Upload
app.post("/upload", (req, res) => {
  const file = req.files?.file;
  if (!file) {
    return res.status(400).json({ message: "File is required" });
  }

  const uploadPath = path.join(UPLOAD_DIR, file.name);
  file.mv(uploadPath, (err) => {
    if (err) {
      console.error("File upload error:", err);
      return res.status(500).json({ message: "File upload failed." });
    }
    res.json({ message: "File uploaded successfully!", path: `/uploads/${file.name}` });
  });
});

// Root Endpoint
app.get("/", (req, res) => {
  res.json({ message: "Web4 Backend is running..." });
});

app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});
