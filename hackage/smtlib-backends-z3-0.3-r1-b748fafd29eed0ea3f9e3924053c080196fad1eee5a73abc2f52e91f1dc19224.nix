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
      identifier = { name = "smtlib-backends-z3"; version = "0.3"; };
      license = "MIT";
      copyright = "";
      maintainer = "quentin.aristote@tweag.io";
      author = "Quentin Aristote";
      homepage = "";
      url = "";
      synopsis = "An SMT-LIB backend implemented using Z3's C API.";
      description = "This library implements an SMT-LIB backend (in the sense of the smtlib-backends\npackage) using inlined calls to Z3's C API. It is thus in particular faster\nthan the standard backends relying on running solvers as external processes, as\nthe OS doesn't need to spawn processes and handle pipes between them.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."smtlib-backends" or (errorHandler.buildDepError "smtlib-backends"))
        ];
        libs = if system.isOsx || system.isWindows
          then [ (pkgs."z3" or (errorHandler.sysDepError "z3")) ]
          else [
            (pkgs."gomp" or (errorHandler.sysDepError "gomp"))
            (pkgs."z3" or (errorHandler.sysDepError "z3"))
            (pkgs."gomp" or (errorHandler.sysDepError "gomp"))
          ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."smtlib-backends" or (errorHandler.buildDepError "smtlib-backends"))
            (hsPkgs."smtlib-backends-tests" or (errorHandler.buildDepError "smtlib-backends-tests"))
            (hsPkgs."smtlib-backends-z3" or (errorHandler.buildDepError "smtlib-backends-z3"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          buildable = true;
        };
      };
    };
  }