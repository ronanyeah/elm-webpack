import webpack from "webpack";
import { WebpackRunOptions } from "webpack-cli";
import { resolve } from "path";

const publicFolder = resolve("./public");

module.exports = (
  _env: {},
  options: WebpackRunOptions
): webpack.Configuration => {
  const devMode = Boolean(options.env.WEBPACK_SERVE);

  const loaderConfig = {
    loader: "elm-webpack-loader",
    options: {
      debug: false,
      optimize: !devMode,
      cwd: __dirname,
    },
  };

  const elmLoader = devMode
    ? [{ loader: "elm-reloader" }, loaderConfig]
    : [loaderConfig];

  return {
    mode: devMode ? "development" : "production",
    entry: "./src/index.ts",
    output: {
      publicPath: "/",
      path: publicFolder,
      filename: "bundle.js",
    },
    stats: devMode ? "errors-warnings" : "normal",
    infrastructureLogging: {
      level: "warn",
    },
    devServer: {
      port: 8000,
      hot: "only",
    },
    module: {
      rules: [
        {
          test: /\.elm$/,
          exclude: [/elm-stuff/, /node_modules/],
          use: elmLoader,
        },
        {
          test: /\.ts$/,
          use: "ts-loader",
          exclude: /node_modules/,
        },
        {
          test: /\.css$/,
          use: ["style-loader", "css-loader"],
        },
        // font imports
        //{
        //test: /\.woff$/,
        //type: "asset/inline",
        //},
      ],
    },
    resolve: {
      extensions: [".ts", ".js"],
    },
    plugins: [new webpack.NoEmitOnErrorsPlugin()],
  };
};
