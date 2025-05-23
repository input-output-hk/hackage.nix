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
      identifier = { name = "positive-integer"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Daniel Casanueva (coding `at` danielcasanueva.eu)";
      author = "Daniel Casanueva";
      homepage = "";
      url = "";
      synopsis = "Type of positive integers.";
      description = "Type of positive integers together with related functions.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }