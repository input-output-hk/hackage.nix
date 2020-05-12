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
      specVersion = "1.10";
      identifier = { name = "monad-metrics"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2017 Seller Labs, 2016 Taylor Fausak";
      maintainer = "matt@sellerlabs.com";
      author = "Matthew Parsons";
      homepage = "https://github.com/parsonsmatt/monad-metrics#readme";
      url = "";
      synopsis = "A convenient wrapper around EKG metrics";
      description = "A convenient wrapper for collecting application metrics. Please see the README.md for more information.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."ekg-core" or (errorHandler.buildDepError "ekg-core"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      tests = {
        "monad-metrics-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."monad-metrics" or (errorHandler.buildDepError "monad-metrics"))
            ];
          buildable = true;
          };
        };
      };
    }