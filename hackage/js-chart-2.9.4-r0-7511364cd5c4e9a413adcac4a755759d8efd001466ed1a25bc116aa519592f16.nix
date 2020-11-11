{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "js-chart"; version = "2.9.4"; };
      license = "MIT";
      copyright = "Jonas Carpay 2020, Neil Mitchell 2014-2020, Chart.js contributors 2020";
      maintainer = "Jonas Carpay <jonascarpay@gmail.com>";
      author = "Jonas Carpay <jonascarpay@gmail.com>";
      homepage = "https://github.com/jonascarpay/js-chart#readme";
      url = "";
      synopsis = "Obtain minified chart.js code";
      description = "This package bundles the minified <http://www.chartjs.org/ chart.js> code into a Haskell package, so it can be depended upon by Cabal packages.\nThe first three components of the version number match the upstream chart.js version.\nThe package is designed to meet the redistribution requirements of downstream users (e.g. Debian).\nThis package is a fork of <https://hackage.haskell.org/package/js-flot js-flot> using chart.js instead of flot.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      tests = {
        "js-chart-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."js-chart" or (errorHandler.buildDepError "js-chart"))
            ];
          buildable = true;
          };
        };
      };
    }