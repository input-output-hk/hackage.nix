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
      identifier = { name = "ivory-examples"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2013 Galois, Inc.";
      maintainer = "trevor@galois.com";
      author = "Galois, Inc";
      homepage = "http://smaccmpilot.org/languages/ivory-introduction.html";
      url = "";
      synopsis = "Ivory examples.";
      description = "Various examples demonstrating the use of Ivory.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "ivory-fibtutorial" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."monadLib" or (errorHandler.buildDepError "monadLib"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."mainland-pretty" or (errorHandler.buildDepError "mainland-pretty"))
            (hsPkgs."wl-pprint" or (errorHandler.buildDepError "wl-pprint"))
            (hsPkgs."ivory" or (errorHandler.buildDepError "ivory"))
            (hsPkgs."ivory-opts" or (errorHandler.buildDepError "ivory-opts"))
            (hsPkgs."ivory-backend-c" or (errorHandler.buildDepError "ivory-backend-c"))
            (hsPkgs."ivory-quickcheck" or (errorHandler.buildDepError "ivory-quickcheck"))
            (hsPkgs."ivory-stdlib" or (errorHandler.buildDepError "ivory-stdlib"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        "ivory-c-clang-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."monadLib" or (errorHandler.buildDepError "monadLib"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."mainland-pretty" or (errorHandler.buildDepError "mainland-pretty"))
            (hsPkgs."wl-pprint" or (errorHandler.buildDepError "wl-pprint"))
            (hsPkgs."ivory" or (errorHandler.buildDepError "ivory"))
            (hsPkgs."ivory-opts" or (errorHandler.buildDepError "ivory-opts"))
            (hsPkgs."ivory-quickcheck" or (errorHandler.buildDepError "ivory-quickcheck"))
            (hsPkgs."ivory-backend-c" or (errorHandler.buildDepError "ivory-backend-c"))
            (hsPkgs."ivory-stdlib" or (errorHandler.buildDepError "ivory-stdlib"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }