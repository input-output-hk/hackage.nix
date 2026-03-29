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
    flags = { taiwan-id-doc-test = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "taiwan-id"; version = "0.1.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Jonathan Knowles";
      maintainer = "mail@jonathanknowles.net";
      author = "Jonathan Knowles";
      homepage = "https://github.com/jonathanknowles/taiwan-id#readme";
      url = "";
      synopsis = "Library and CLI for working with ID numbers issued in Taiwan.";
      description = "This package provides both a library and a command-line tool (CLI) for\nworking with identification numbers issued to residents of Taiwan, as well\nas the other territories of the Republic of China (ROC), including Kinmen,\nMatsu, and Penghu.\n\nIdentification numbers are issued under two systems — National Identification\nCards (國民身分證) and Resident Certificates (居留證) — with numbers assigned\nunder each system occupying disjoint parts of the same number space.\n\nEach identification number consists of a single uppercase letter followed by\nnine decimal digits, with the final digit serving as a checksum calculated\naccording to a standard algorithm.\n\nExample: `A123456789`\n\nSee `README.md` or the \"Taiwan.ID\" module to get started.\n\nFor more details, see:\n\n* https://zh.wikipedia.org/wiki/中華民國國民身分證\n* https://zh.wikipedia.org/wiki/中華民國居留證\n* https://en.wikipedia.org/wiki/National_identification_card_(Taiwan)\n* https://en.wikipedia.org/wiki/Resident_certificate";
      buildType = "Simple";
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
      sublibs = {
        "taiwan-id-cli" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
            (hsPkgs."nonempty-containers" or (errorHandler.buildDepError "nonempty-containers"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."taiwan-id" or (errorHandler.buildDepError "taiwan-id"))
          ];
          buildable = true;
        };
        "taiwan-id-test-common" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."taiwan-id" or (errorHandler.buildDepError "taiwan-id"))
          ];
          buildable = true;
        };
      };
      exes = {
        "taiwan-id" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."taiwan-id".components.sublibs.taiwan-id-cli or (errorHandler.buildDepError "taiwan-id:taiwan-id-cli"))
          ];
          buildable = true;
        };
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
            (hsPkgs."taiwan-id".components.sublibs.taiwan-id-test-common or (errorHandler.buildDepError "taiwan-id:taiwan-id-test-common"))
          ];
          buildable = true;
        };
        "taiwan-id-cli-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-classes" or (errorHandler.buildDepError "quickcheck-classes"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."taiwan-id" or (errorHandler.buildDepError "taiwan-id"))
            (hsPkgs."taiwan-id".components.sublibs.taiwan-id-cli or (errorHandler.buildDepError "taiwan-id:taiwan-id-cli"))
            (hsPkgs."taiwan-id".components.sublibs.taiwan-id-test-common or (errorHandler.buildDepError "taiwan-id:taiwan-id-test-common"))
          ];
          buildable = true;
        };
        "taiwan-id-doc-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest-parallel" or (errorHandler.buildDepError "doctest-parallel"))
            (hsPkgs."taiwan-id" or (errorHandler.buildDepError "taiwan-id"))
          ];
          buildable = if !flags.taiwan-id-doc-test then false else true;
        };
      };
    };
  }