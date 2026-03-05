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
      identifier = { name = "smtlib-backends-tests"; version = "0.3"; };
      license = "MIT";
      copyright = "";
      maintainer = "quentin.aristote@tweag.io";
      author = "Quentin Aristote";
      homepage = "";
      url = "";
      synopsis = "Testing SMT-LIB backends.";
      description = "This library provides common functions and values used for testing SMT-LIB\nbackends, as provided by the smtlib-backends library.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."smtlib-backends" or (errorHandler.buildDepError "smtlib-backends"))
          (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
        ];
        buildable = true;
      };
    };
  }