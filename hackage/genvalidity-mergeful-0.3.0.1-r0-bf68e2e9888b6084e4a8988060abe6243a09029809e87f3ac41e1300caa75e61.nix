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
      identifier = { name = "genvalidity-mergeful"; version = "0.3.0.1"; };
      license = "MIT";
      copyright = "Copyright: (c) 2019-2023 Tom Sydney Kerckhove";
      maintainer = "syd@cs-syd.eu";
      author = "Tom Sydney Kerckhove";
      homepage = "https://github.com/NorfairKing/mergeful#readme";
      url = "";
      synopsis = "";
      description = "Please see the README on GitHub at <https://github.com/NorfairKing/mergeful#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."genvalidity" or (errorHandler.buildDepError "genvalidity"))
          (hsPkgs."genvalidity-containers" or (errorHandler.buildDepError "genvalidity-containers"))
          (hsPkgs."genvalidity-time" or (errorHandler.buildDepError "genvalidity-time"))
          (hsPkgs."mergeful" or (errorHandler.buildDepError "mergeful"))
        ];
        buildable = true;
      };
      tests = {
        "mergeful-test" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."autodocodec" or (errorHandler.buildDepError "autodocodec"))
            (hsPkgs."autodocodec-yaml" or (errorHandler.buildDepError "autodocodec-yaml"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."genvalidity-mergeful" or (errorHandler.buildDepError "genvalidity-mergeful"))
            (hsPkgs."genvalidity-sydtest" or (errorHandler.buildDepError "genvalidity-sydtest"))
            (hsPkgs."genvalidity-sydtest-aeson" or (errorHandler.buildDepError "genvalidity-sydtest-aeson"))
            (hsPkgs."genvalidity-uuid" or (errorHandler.buildDepError "genvalidity-uuid"))
            (hsPkgs."mergeful" or (errorHandler.buildDepError "mergeful"))
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
        "mergeful-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."genvalidity-criterion" or (errorHandler.buildDepError "genvalidity-criterion"))
            (hsPkgs."genvalidity-mergeful" or (errorHandler.buildDepError "genvalidity-mergeful"))
            (hsPkgs."mergeful" or (errorHandler.buildDepError "mergeful"))
          ];
          buildable = true;
        };
      };
    };
  }