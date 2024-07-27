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
      identifier = {
        name = "genvalidity-sydtest-hashable";
        version = "0.0.0.0";
      };
      license = "MIT";
      copyright = "2020 Tom Sydney Kerckhove";
      maintainer = "syd@cs-syd.eu";
      author = "Tom Sydney Kerckhove";
      homepage = "https://github.com/NorfairKing/validity#readme";
      url = "";
      synopsis = "Standard spec's for Hashable instances for sydtest";
      description = "Standard spec's for Hashable instances for sydtest";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."genvalidity" or (errorHandler.buildDepError "genvalidity"))
          (hsPkgs."genvalidity-sydtest" or (errorHandler.buildDepError "genvalidity-sydtest"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."sydtest" or (errorHandler.buildDepError "sydtest"))
          (hsPkgs."validity" or (errorHandler.buildDepError "validity"))
        ];
        buildable = true;
      };
      tests = {
        "genvalidity-sydtest-hashable-test" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."genvalidity" or (errorHandler.buildDepError "genvalidity"))
            (hsPkgs."genvalidity-sydtest" or (errorHandler.buildDepError "genvalidity-sydtest"))
            (hsPkgs."genvalidity-sydtest-hashable" or (errorHandler.buildDepError "genvalidity-sydtest-hashable"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."sydtest" or (errorHandler.buildDepError "sydtest"))
            (hsPkgs."validity" or (errorHandler.buildDepError "validity"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.sydtest-discover.components.exes.sydtest-discover or (pkgs.pkgsBuildBuild.sydtest-discover or (errorHandler.buildToolDepError "sydtest-discover:sydtest-discover")))
          ];
          buildable = true;
        };
      };
    };
  }