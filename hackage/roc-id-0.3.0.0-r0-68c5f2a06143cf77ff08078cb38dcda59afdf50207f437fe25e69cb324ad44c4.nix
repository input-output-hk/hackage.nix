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
      identifier = { name = "roc-id"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Jonathan Knowles";
      maintainer = "mail@jonathanknowles.net";
      author = "Jonathan Knowles";
      homepage = "https://github.com/jonathanknowles/roc-id#readme";
      url = "";
      synopsis = "Implementation of the ROC (Taiwan) Uniform ID Number format.";
      description = "This package provides an implementation of the ROC (Taiwan) Uniform\nIdentification Number (中華民國統一證號) format.\n\nThis format is used by both National Identification Cards (國民身分證) and\nAlien Resident Certificates (居留證). Each identification number consists of\na single uppercase letter followed by nine decimal digits, with the final\ndigit serving as a checksum, calculated according to a standard algorithm.\n\nExample: `A123456789`\n\nThis package offers functions for validating, decoding, and encoding these\nnumbers.\n\nSee the \"ROC.ID\" module to get started.\n\nFor more details of the Uniform Identification Number format, see:\n\n* https://zh.wikipedia.org/wiki/中華民國國民身分證\n* https://en.wikipedia.org/wiki/National_identification_card_(Taiwan)\n* https://en.wikipedia.org/wiki/Resident_certificate";
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
          (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
          (hsPkgs."nonempty-containers" or (errorHandler.buildDepError "nonempty-containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "roc-id-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
            (hsPkgs."nonempty-containers" or (errorHandler.buildDepError "nonempty-containers"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-classes" or (errorHandler.buildDepError "quickcheck-classes"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."roc-id" or (errorHandler.buildDepError "roc-id"))
          ];
          buildable = true;
        };
        "roc-id-test-docs" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."roc-id" or (errorHandler.buildDepError "roc-id"))
          ];
          buildable = true;
        };
      };
    };
  }