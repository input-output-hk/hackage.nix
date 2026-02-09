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
      identifier = { name = "Dung"; version = "2.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2014-2026 Bas van Gijzel";
      maintainer = "Bas van Gijzel <nenekotan+git@gmail.com>";
      author = "Bas van Gijzel";
      homepage = "https://github.com/nebasuke/Dung";
      url = "";
      synopsis = "An implementation of the Dung argumentation frameworks.";
      description = "An implementation of Dung's argumentation frameworks, an abstract\nargumentation model used to either directly represent conflicting\ninformation, or used as a translation target for more complex (structured)\nargumentation models. For an introduction to Dung's frameworks see\n<http://en.wikipedia.org/wiki/Argumentation_framework> and Dung's paper\nfrom 1995: \\\"On the acceptability of arguments and its fundamental role\nin nonmonotonic reasoning, logic programming, and n-person games\\\",\nArtificial Intelligence 77: 321-357.\nFor the papers accompanying this library see \\\"Towards a framework for\nthe implementation and verification of translations between argumentation\nmodels\\\" and \\\"A principled approach to the implementation of argumentation\nmodels\\\", available at <https://scholar.google.com/citations?user=Xu4yjvwAAAAJ&hl>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
        ];
        buildable = true;
      };
      exes = {
        "dungell" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Dung" or (errorHandler.buildDepError "Dung"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          ];
          buildable = true;
        };
      };
      tests = {
        "dung-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Dung" or (errorHandler.buildDepError "Dung"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
        "dung-doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
          ];
          buildable = true;
        };
      };
    };
  }