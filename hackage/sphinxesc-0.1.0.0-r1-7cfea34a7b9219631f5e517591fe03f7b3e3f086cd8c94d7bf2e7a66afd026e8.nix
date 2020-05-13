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
      identifier = { name = "sphinxesc"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Mackey RMS";
      author = "Daniel Choi";
      homepage = "https://github.com/mackeyrms/sphinxesc#readme";
      url = "";
      synopsis = "Transform queries for sphinx input";
      description = "Transform queries for sphinx input";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          ];
        buildable = true;
        };
      exes = {
        "sphinxesc" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."sphinxesc" or (errorHandler.buildDepError "sphinxesc"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            ];
          buildable = true;
          };
        };
      };
    }