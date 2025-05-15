import React, { useState, useEffect } from "react";
import axios from "axios";
import "./App.css";

const BACKEND_URL = import.meta.env.https://vite-react-two-steel.vercel.app;

const App: React.FC = () => {
  const [domain, setDomain] = useState<string>("");
  const [file, setFile] = useState<File | null>(null);
  const [message, setMessage] = useState<string>("Connecting to backend...");

  // Fetch backend status
  useEffect(() => {
    const fetchStatus = async () => {
      try {
        const response = await axios.get(`${BACKEND_URL}/`);
        setMessage(response.data.message);
      } catch (error) {
        console.error("Error fetching backend status:", error);
        setMessage("Backend unavailable.");
      }
    };
    fetchStatus();
  }, []);

  // Handle domain submission
  const handleDomainSubmit = async () => {
    if (!domain) return;

    try {
      const response = await axios.post(`${BACKEND_URL}/set-domain`, {
        domain,
      });
      alert(response.data.message);
    } catch (error) {
      console.error("Error setting domain:", error);
      alert("Failed to set domain.");
    }
  };

  // Handle file upload
  const handleFileUpload = async (e: React.ChangeEvent<HTMLInputElement>) => {
    const selectedFile = e.target.files?.[0];
    if (!selectedFile) return;

    setFile(selectedFile);
    const formData = new FormData();
    formData.append("file", selectedFile);

    try {
      const response = await axios.post(`${BACKEND_URL}/upload`, formData, {
        headers: {
          "Content-Type": "multipart/form-data",
        },
      });
      alert(response.data.message);
    } catch (error) {
      console.error("Error uploading file:", error);
      alert("File upload failed.");
    }
  };

  return (
    <div className="App">
      <header>
        <h1>Web4 Control Panel</h1>
        <p>{message}</p>
      </header>

      <section className="domain-section">
        <h2>Domain Management</h2>
        <input
          type="text"
          placeholder="Enter domain"
          value={domain}
          onChange={(e) => setDomain(e.target.value)}
        />
        <button onClick={handleDomainSubmit}>Set Domain</button>
      </section>

      <section className="upload-section">
        <h2>File Upload</h2>
        <input type="file" onChange={handleFileUpload} />
        {file && <p>Selected file: {file.name}</p>}
      </section>
    </div>
  );
};

export default App;
