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
      specVersion = "3.0";
      identifier = { name = "hasmtlib"; version = "1.0.1"; };
      license = "GPL-3.0-only";
      copyright = "2024 Julian Bruder";
      maintainer = "julian.bruder@outlook.com";
      author = "Julian Bruder";
      homepage = "https://github.com/bruderj15/Hasmtlib";
      url = "";
      synopsis = "A monad for interfacing with external SMT solvers";
      description = "Hasmtlib is a library for generating SMTLib2-problems using a monad.\nIt takes care of encoding your problem, marshaling the data to an external solver and parsing and interpreting the result into Haskell types.\nIt is highly inspired by ekmett/ersatz which does the same for QSAT.\nCommunication with external solvers is handled by tweag/smtlib-backends.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."smtlib-backends" or (errorHandler.buildDepError "smtlib-backends"))
          (hsPkgs."smtlib-backends-process" or (errorHandler.buildDepError "smtlib-backends-process"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."bitvec" or (errorHandler.buildDepError "bitvec"))
          (hsPkgs."finite-typelits" or (errorHandler.buildDepError "finite-typelits"))
          (hsPkgs."vector-sized" or (errorHandler.buildDepError "vector-sized"))
        ];
        buildable = true;
      };
    };
  }