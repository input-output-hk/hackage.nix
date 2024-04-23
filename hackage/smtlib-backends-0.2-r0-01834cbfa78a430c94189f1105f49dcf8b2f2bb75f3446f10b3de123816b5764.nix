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
      identifier = { name = "smtlib-backends"; version = "0.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "quentin.aristote@tweag.io";
      author = "Quentin Aristote";
      homepage = "";
      url = "";
      synopsis = "Low-level functions for SMT-LIB-based interaction with SMT solvers. ";
      description = "This library provides an extensible interface for interacting with SMT solvers\nusing SMT-LIB. The smtlib-backends-process provides a backend that runs solvers\nas external processes, and the smtlib-backends-z3 package provides a backend that\nuses inlined calls to Z3's C API.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ];
        buildable = true;
      };
    };
  }