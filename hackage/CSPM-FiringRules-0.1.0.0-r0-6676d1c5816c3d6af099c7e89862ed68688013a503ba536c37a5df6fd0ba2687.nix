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
      specVersion = "1.6";
      identifier = { name = "CSPM-FiringRules"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Marc Fontaine <fontaine@cs.uni-duesseldorf.de>";
      author = "2010 Marc Fontaine";
      homepage = "http://www.stups.uni-duesseldorf.de/~fontaine/csp";
      url = "";
      synopsis = "Firing rules semantic of CSPM";
      description = "This package contains functions for computing the transitions of a CSP process\nbased on the standard CSP firing rule semantic\n(see The Theory and Practice of Concurrency A.W. Roscoe 1999.)\nIt also contains a rudimentary tracer for executing transitions,\nsome QuickCheck tests, and a data type for proof trees.\nTo use this package one has to provide instances for the classes and type families,\ndefined in the CSPM-CoreLanguage package.\nThe package contains two mock-implementations that provide these instances.\nThe CSPM-Interpreter package contains an other implementation.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."CSPM-CoreLanguage" or (errorHandler.buildDepError "CSPM-CoreLanguage"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
        ];
        buildable = true;
      };
    };
  }