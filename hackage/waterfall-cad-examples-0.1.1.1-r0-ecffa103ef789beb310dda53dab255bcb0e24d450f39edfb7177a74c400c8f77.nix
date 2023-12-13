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
      specVersion = "1.12";
      identifier = { name = "waterfall-cad-examples"; version = "0.1.1.1"; };
      license = "LGPL-2.1-only";
      copyright = "2023 Joe Warren";
      maintainer = "josephmarkwarren@gmail.com";
      author = "Joe Warren";
      homepage = "https://github.com/joe-warren/opencascade-hs#readme";
      url = "";
      synopsis = "Examples for Waterfall CAD, a Declarative CAD/Solid Modeling Library";
      description = "Please see the README on GitHub at <https://github.com/joe-warren/opencascade-hs#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
          (hsPkgs."opencascade-hs" or (errorHandler.buildDepError "opencascade-hs"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."waterfall-cad" or (errorHandler.buildDepError "waterfall-cad"))
          ];
        buildable = true;
        };
      exes = {
        "waterfall-cad-examples" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
            (hsPkgs."opencascade-hs" or (errorHandler.buildDepError "opencascade-hs"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."waterfall-cad" or (errorHandler.buildDepError "waterfall-cad"))
            (hsPkgs."waterfall-cad-examples" or (errorHandler.buildDepError "waterfall-cad-examples"))
            ];
          buildable = true;
          };
        };
      };
    }