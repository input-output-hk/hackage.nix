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
      identifier = { name = "genvalidity-dirforest"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "2020-2023 Tom Sydney Kerckhove";
      maintainer = "syd@cs-ysd.eu";
      author = "Tom Sydney Kerckhove";
      homepage = "https://github.com/NorfairKing/dirforest#readme";
      url = "";
      synopsis = "Generators for typed directory forests";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."dirforest" or (errorHandler.buildDepError "dirforest"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."genvalidity" or (errorHandler.buildDepError "genvalidity"))
          (hsPkgs."genvalidity-containers" or (errorHandler.buildDepError "genvalidity-containers"))
          (hsPkgs."genvalidity-path" or (errorHandler.buildDepError "genvalidity-path"))
          (hsPkgs."path" or (errorHandler.buildDepError "path"))
        ];
        buildable = true;
      };
      tests = {
        "dirforest-test" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."dirforest" or (errorHandler.buildDepError "dirforest"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."genvalidity-bytestring" or (errorHandler.buildDepError "genvalidity-bytestring"))
            (hsPkgs."genvalidity-dirforest" or (errorHandler.buildDepError "genvalidity-dirforest"))
            (hsPkgs."genvalidity-sydtest" or (errorHandler.buildDepError "genvalidity-sydtest"))
            (hsPkgs."genvalidity-sydtest-aeson" or (errorHandler.buildDepError "genvalidity-sydtest-aeson"))
            (hsPkgs."path" or (errorHandler.buildDepError "path"))
            (hsPkgs."path-io" or (errorHandler.buildDepError "path-io"))
            (hsPkgs."sydtest" or (errorHandler.buildDepError "sydtest"))
          ];
          build-tools = [
            (hsPkgs.buildPackages.sydtest-discover.components.exes.sydtest-discover or (pkgs.buildPackages.sydtest-discover or (errorHandler.buildToolDepError "sydtest-discover:sydtest-discover")))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "dirforest-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."dirforest" or (errorHandler.buildDepError "dirforest"))
            (hsPkgs."genvalidity" or (errorHandler.buildDepError "genvalidity"))
            (hsPkgs."genvalidity-criterion" or (errorHandler.buildDepError "genvalidity-criterion"))
            (hsPkgs."genvalidity-dirforest" or (errorHandler.buildDepError "genvalidity-dirforest"))
            (hsPkgs."genvalidity-text" or (errorHandler.buildDepError "genvalidity-text"))
          ];
          buildable = true;
        };
      };
    };
  }