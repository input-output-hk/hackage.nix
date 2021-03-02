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
      specVersion = "1.0";
      identifier = { name = "hiccup"; version = "0.40"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "consalus+hiccup@gmail.com";
      author = "Kyle Consalus";
      homepage = "http://hiccup.googlecode.com/";
      url = "";
      synopsis = "Relatively efficient Tcl interpreter with support for basic operations";
      description = "Interpreter for a subset of tcl";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hiccup" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."readline" or (errorHandler.buildDepError "readline"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            ];
          buildable = true;
          };
        };
      };
    }