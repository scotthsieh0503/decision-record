
const path = require("path");
const webpack = require("webpack");

module.exports = {
  entry: {
    main: './src/app.js'
  },
  mode: "development",
  module: {
    rules: [
      {
        test: /\.(js|jsx)$/,
        exclude: /(node_modules)/,
        loader: "babel-loader",
        options: { presets: ["@babel/env"] }
      },
      {
        test: /\.css$/,
        use: ["style-loader", "css-loader"]
      }
    ]
  },
  resolve: { extensions: ["*", ".js", ".jsx"] },
  output: {
      path: path.resolve(__dirname, "static/"),
      filename: '[name].bundle.js'
  }
};