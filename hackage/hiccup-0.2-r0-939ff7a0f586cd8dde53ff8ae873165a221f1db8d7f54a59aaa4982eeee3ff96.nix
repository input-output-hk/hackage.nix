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
      identifier = { name = "hiccup"; version = "0.2"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "consalus+hiccup@google.com";
      author = "Kyle Consalus";
      homepage = "";
      url = "";
      synopsis = "Simple tcl interpeter   ";
      description = "A simplistic interpreter for a subset of tcl ";
      buildType = "Custom";
    };
    components = {
      exes = {
        "hiccup" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
          buildable = true;
        };
      };
    };
  }