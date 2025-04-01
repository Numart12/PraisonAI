import React from "react";
import ReactDOM from "react-dom/client";
import App from "./App.jsx"; // або іншы галоўны кампанент
import "./index.css"; // калі маеш стылі

ReactDOM.createRoot(document.getElementById("root")).render(
  <React.StrictMode>
    <App />
  </React.StrictMode>
);
