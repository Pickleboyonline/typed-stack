module.exports = function (api) {
  api.cache(true);
  return {
    presets: ["babel-preset-expo"],
    plugins: [
      [
        "module-resolver",
        {
          // root: ['./src'],
          extensions: [".ios.js", ".android.js", ".js", ".ts", ".tsx", ".json"],
          alias: {
            "@common-types": ["./common-types/index"],
            "@components": ["./components/index"],
            "@constants": ["./constants/index"],
            "@hooks": ["./hooks/index"],
            "@navigation": ["./navigation/index"],
            "@screens": ["./screens/index"],
            "@util": ["./util/index"],
          },
        },
      ],
    ],
  };
};
