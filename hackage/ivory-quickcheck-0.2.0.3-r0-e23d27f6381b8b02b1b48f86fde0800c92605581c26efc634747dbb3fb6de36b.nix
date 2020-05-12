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
      identifier = { name = "ivory-quickcheck"; version = "0.2.0.3"; };
      license = "BSD-3-Clause";
      copyright = "2013 Galois, Inc.";
      maintainer = "leepike@galois.com";
      author = "Galois, Inc.";
      homepage = "http://ivorylang.org";
      url = "";
      synopsis = "QuickCheck driver for Ivory.";
      description = "Warning!  This module is experimental and its implementation may change dramatically.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base-compat" or (errorHandler.buildDepError "base-compat"))
          (hsPkgs."monadLib" or (errorHandler.buildDepError "monadLib"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."ivory" or (errorHandler.buildDepError "ivory"))
          (hsPkgs."ivory-backend-c" or (errorHandler.buildDepError "ivory-backend-c"))
          (hsPkgs."ivory-eval" or (errorHandler.buildDepError "ivory-eval"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base-compat" or (errorHandler.buildDepError "base-compat"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."monadLib" or (errorHandler.buildDepError "monadLib"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."ivory" or (errorHandler.buildDepError "ivory"))
            (hsPkgs."ivory-backend-c" or (errorHandler.buildDepError "ivory-backend-c"))
            (hsPkgs."ivory-quickcheck" or (errorHandler.buildDepError "ivory-quickcheck"))
            (hsPkgs."ivory-stdlib" or (errorHandler.buildDepError "ivory-stdlib"))
            ];
          buildable = true;
          };
        };
      };
    }