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
      identifier = { name = "genvalidity-appendful"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "Copyright: (c) 2020-2022 Tom Sydney Kerckhove";
      maintainer = "syd@cs-syd.eu";
      author = "Tom Sydney Kerckhove";
      homepage = "https://github.com/NorfairKing/appendful#readme";
      url = "";
      synopsis = "";
      description = "Generators for ppend-only cooperative agreement";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."appendful" or (errorHandler.buildDepError "appendful"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."genvalidity" or (errorHandler.buildDepError "genvalidity"))
          (hsPkgs."genvalidity-containers" or (errorHandler.buildDepError "genvalidity-containers"))
          (hsPkgs."genvalidity-time" or (errorHandler.buildDepError "genvalidity-time"))
        ];
        buildable = true;
      };
      tests = {
        "appendful-test" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."appendful" or (errorHandler.buildDepError "appendful"))
            (hsPkgs."autodocodec" or (errorHandler.buildDepError "autodocodec"))
            (hsPkgs."autodocodec-yaml" or (errorHandler.buildDepError "autodocodec-yaml"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."genvalidity-appendful" or (errorHandler.buildDepError "genvalidity-appendful"))
            (hsPkgs."genvalidity-sydtest" or (errorHandler.buildDepError "genvalidity-sydtest"))
            (hsPkgs."genvalidity-sydtest-aeson" or (errorHandler.buildDepError "genvalidity-sydtest-aeson"))
            (hsPkgs."genvalidity-uuid" or (errorHandler.buildDepError "genvalidity-uuid"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."pretty-show" or (errorHandler.buildDepError "pretty-show"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."safe-coloured-text" or (errorHandler.buildDepError "safe-coloured-text"))
            (hsPkgs."sydtest" or (errorHandler.buildDepError "sydtest"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.sydtest-discover.components.exes.sydtest-discover or (pkgs.pkgsBuildBuild.sydtest-discover or (errorHandler.buildToolDepError "sydtest-discover:sydtest-discover")))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "genvalidity-appendful-bench" = {
          depends = [
            (hsPkgs."appendful" or (errorHandler.buildDepError "appendful"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."genvalidity-appendful" or (errorHandler.buildDepError "genvalidity-appendful"))
            (hsPkgs."genvalidity-criterion" or (errorHandler.buildDepError "genvalidity-criterion"))
          ];
          buildable = true;
        };
      };
    };
  }