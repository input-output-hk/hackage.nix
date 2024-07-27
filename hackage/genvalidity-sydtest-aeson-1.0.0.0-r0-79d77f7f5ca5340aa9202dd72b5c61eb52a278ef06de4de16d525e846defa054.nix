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
      identifier = { name = "genvalidity-sydtest-aeson"; version = "1.0.0.0"; };
      license = "MIT";
      copyright = "Copyright: (c) 2016-2021 Tom Sydney Kerckhove";
      maintainer = "syd@cs-syd.eu";
      author = "Tom Sydney Kerckhove";
      homepage = "http://cs-syd.eu";
      url = "";
      synopsis = "Standard spec's for aeson-related instances in sydtest";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."genvalidity" or (errorHandler.buildDepError "genvalidity"))
          (hsPkgs."genvalidity-sydtest" or (errorHandler.buildDepError "genvalidity-sydtest"))
          (hsPkgs."sydtest" or (errorHandler.buildDepError "sydtest"))
        ];
        buildable = true;
      };
      tests = {
        "genvalidity-sydtest-aeson-test" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."genvalidity" or (errorHandler.buildDepError "genvalidity"))
            (hsPkgs."genvalidity-aeson" or (errorHandler.buildDepError "genvalidity-aeson"))
            (hsPkgs."genvalidity-sydtest" or (errorHandler.buildDepError "genvalidity-sydtest"))
            (hsPkgs."genvalidity-sydtest-aeson" or (errorHandler.buildDepError "genvalidity-sydtest-aeson"))
            (hsPkgs."genvalidity-text" or (errorHandler.buildDepError "genvalidity-text"))
            (hsPkgs."sydtest" or (errorHandler.buildDepError "sydtest"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
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