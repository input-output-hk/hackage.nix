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
      identifier = { name = "CSPM-Interpreter"; version = "0.4.4.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Marc Fontaine <fontaine@cs.uni-duesseldorf.de>";
      author = "2010 - 2011 Marc Fontaine";
      homepage = "http://www.stups.uni-duesseldorf.de/~fontaine/csp";
      url = "";
      synopsis = "An interpreter for CSPM";
      description = "This package contains an interpreter for CSPM\nand instance declarations that implement the interface defined in\nthe package CSPM-CoreLanguage.\nAll type family instances that belong to this implementation\nare indexed with the phantom-type 'INT' ('INT' == interpreter).\nThe operational semantics of core-CSP is defined in the CSPM-FiringRules package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."CSPM-Frontend" or (errorHandler.buildDepError "CSPM-Frontend"))
          (hsPkgs."CSPM-CoreLanguage" or (errorHandler.buildDepError "CSPM-CoreLanguage"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          ];
        buildable = true;
        };
      };
    }