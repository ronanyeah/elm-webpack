# Elm + Webpack example

## Requirements
- [npm CLI](https://docs.npmjs.com/)

---

## How to fetch dependencies
- `npm install`

## How to build
- `npm run build`

## How to develop
- `npm run watch`
- Navigate to [localhost:8000](http:localhost:8000).

---

## Notes
This scaffold uses Webpack 5, which removed the automatic Node.js polyfilling from previous Webpack versions. If this causes errors in your dependencies, you can emulate the effect in `webpack.config.js`:
```
{
  ...
  resolve: {
    fallback: {
      crypto: false,
      stream: false,
    },
  },
  plugins: [
    new webpack.ProvidePlugin({
      Buffer: ["buffer", "Buffer"],
    }),
    ...
  ],
}
```
Or by using [`node-polyfill-webpack-plugin`](https://www.npmjs.com/package/node-polyfill-webpack-plugin):
```
const NodePolyfillPlugin = require("node-polyfill-webpack-plugin");

{
  ...
  plugins: [
    new NodePolyfillPlugin(),
    ...
  ],
}
```
