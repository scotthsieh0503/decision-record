import React from 'react';
import ReactDOM from "react-dom";

export default function App(props) {
  return <h1>Hello world</h1>;
}

const container = document.getElementById("app");
ReactDOM.render(<App />, container);