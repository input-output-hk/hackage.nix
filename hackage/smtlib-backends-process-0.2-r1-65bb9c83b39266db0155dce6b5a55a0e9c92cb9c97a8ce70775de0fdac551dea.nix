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
      identifier = { name = "smtlib-backends-process"; version = "0.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "quentin.aristote@tweag.io";
      author = "Quentin Aristote";
      homepage = "";
      url = "";
      synopsis = "An SMT-LIB backend running solvers as external processes.";
      description = "This library implements an SMT-LIB backend (in the sense of the smtlib-backends\npackage) using by running solvers as external processes.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."smtlib-backends" or (errorHandler.buildDepError "smtlib-backends"))
          (hsPkgs."typed-process" or (errorHandler.buildDepError "typed-process"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."smtlib-backends" or (errorHandler.buildDepError "smtlib-backends"))
            (hsPkgs."smtlib-backends-process" or (errorHandler.buildDepError "smtlib-backends-process"))
            (hsPkgs."smtlib-backends-tests" or (errorHandler.buildDepError "smtlib-backends-tests"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."typed-process" or (errorHandler.buildDepError "typed-process"))
          ];
          buildable = true;
        };
      };
    };
  }