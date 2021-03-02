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
      identifier = { name = "hiccup"; version = "0.35"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "consalus+hiccup@google.com";
      author = "Kyle Consalus";
      homepage = "http://code.google.com/p/hiccup/";
      url = "";
      synopsis = "Relatively efficient Tcl interpreter with support for basic operations ";
      description = "Interpreter for a subset of tcl ";
      buildType = "Custom";
      };
    components = {
      exes = {
        "hiccup" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."readline" or (errorHandler.buildDepError "readline"))
            ];
          buildable = true;
          };
        };
      };
    }