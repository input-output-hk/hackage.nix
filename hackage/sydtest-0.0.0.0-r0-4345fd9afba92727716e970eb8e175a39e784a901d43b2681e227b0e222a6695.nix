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
      specVersion = "1.12";
      identifier = { name = "sydtest"; version = "0.0.0.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2020 Tom Sydney Kerckhove";
      maintainer = "syd@cs-syd.eu";
      author = "Tom Sydney Kerckhove";
      homepage = "https://github.com/NorfairKing/sydtest#readme";
      url = "";
      synopsis = "An advanced modern testing framework for Haskell with good defaults and advanced testing features.";
      description = "An advanced modern testing framework for Haskell with good defaults and advanced testing features. Sydtest aims to make the common easy and the hard possible. See https://github.com/NorfairKing/sydtest#readme for more information.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."Diff" or (errorHandler.buildDepError "Diff"))
          (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
          (hsPkgs."envparse" or (errorHandler.buildDepError "envparse"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."path" or (errorHandler.buildDepError "path"))
          (hsPkgs."path-io" or (errorHandler.buildDepError "path-io"))
          (hsPkgs."pretty-show" or (errorHandler.buildDepError "pretty-show"))
          (hsPkgs."quickcheck-io" or (errorHandler.buildDepError "quickcheck-io"))
          (hsPkgs."rainbow" or (errorHandler.buildDepError "rainbow"))
          (hsPkgs."random-shuffle" or (errorHandler.buildDepError "random-shuffle"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
          (hsPkgs."yamlparse-applicative" or (errorHandler.buildDepError "yamlparse-applicative"))
          ];
        buildable = true;
        };
      tests = {
        "sydtest-output-test" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."path" or (errorHandler.buildDepError "path"))
            (hsPkgs."path-io" or (errorHandler.buildDepError "path-io"))
            (hsPkgs."rainbow" or (errorHandler.buildDepError "rainbow"))
            (hsPkgs."sydtest" or (errorHandler.buildDepError "sydtest"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        "sydtest-test" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."path" or (errorHandler.buildDepError "path"))
            (hsPkgs."path-io" or (errorHandler.buildDepError "path-io"))
            (hsPkgs."rainbow" or (errorHandler.buildDepError "rainbow"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."sydtest" or (errorHandler.buildDepError "sydtest"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.sydtest-discover or (pkgs.buildPackages.sydtest-discover or (errorHandler.buildToolDepError "sydtest-discover")))
            ];
          buildable = true;
          };
        };
      };
    }