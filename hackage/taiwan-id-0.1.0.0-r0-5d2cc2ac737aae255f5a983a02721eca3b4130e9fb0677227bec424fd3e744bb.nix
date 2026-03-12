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
      identifier = { name = "taiwan-id"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Jonathan Knowles";
      maintainer = "mail@jonathanknowles.net";
      author = "Jonathan Knowles";
      homepage = "https://github.com/jonathanknowles/taiwan-id#readme";
      url = "";
      synopsis = "Implementation of Taiwan's uniform ID number format.";
      description = "This package provides a Haskell implementation of Taiwan's uniform\nidentification number format.\n\nThis number format is used by both National Identification Cards (國民身分證)\nand Resident Certificates (居留證) issued by the Republic of China (ROC)\ngovernment to individuals, with numbers assigned under each system occupying\ndisjoint parts of the same identifier space.\n\nEach identification number consists of a single uppercase letter followed by\nnine decimal digits, with the final digit serving as a checksum calculated\naccording to a standard algorithm.\n\nExample: `A123456789`\n\nThis package offers functions for validating, decoding, and encoding these\nnumbers.\n\nSee the \"Taiwan.ID\" module to get started.\n\nFor more details, see:\n\n* https://zh.wikipedia.org/wiki/中華民國國民身分證\n* https://en.wikipedia.org/wiki/National_identification_card_(Taiwan)\n* https://en.wikipedia.org/wiki/Resident_certificate";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.pkgsBuildBuild.base or (pkgs.pkgsBuildBuild.base or (errorHandler.setupDepError "base")))
        (hsPkgs.pkgsBuildBuild.cabal-doctest or (pkgs.pkgsBuildBuild.cabal-doctest or (errorHandler.setupDepError "cabal-doctest")))
      ];
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."finitary" or (errorHandler.buildDepError "finitary"))
          (hsPkgs."finite-typelits" or (errorHandler.buildDepError "finite-typelits"))
          (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
          (hsPkgs."nonempty-containers" or (errorHandler.buildDepError "nonempty-containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "taiwan-id-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."finitary" or (errorHandler.buildDepError "finitary"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
            (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
            (hsPkgs."nonempty-containers" or (errorHandler.buildDepError "nonempty-containers"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-classes" or (errorHandler.buildDepError "quickcheck-classes"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."taiwan-id" or (errorHandler.buildDepError "taiwan-id"))
          ];
          buildable = true;
        };
        "taiwan-id-test-docs" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."taiwan-id" or (errorHandler.buildDepError "taiwan-id"))
          ];
          buildable = true;
        };
      };
    };
  }