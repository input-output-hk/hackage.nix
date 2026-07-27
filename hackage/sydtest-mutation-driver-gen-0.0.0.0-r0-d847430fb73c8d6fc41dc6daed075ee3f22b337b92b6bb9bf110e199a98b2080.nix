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
        name = "sydtest-mutation-driver-gen";
        version = "0.0.0.0";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "syd@cs-syd.eu";
      author = "Tom Sydney Kerckhove";
      homepage = "https://github.com/NorfairKing/sydtest#readme";
      url = "";
      synopsis = "Generators and tests for sydtest-mutation-driver's config types.";
      description = "GenValid instances and roundtrip tests for the data types in sydtest-mutation-driver, ensuring the YAML/JSON encoding round-trips and that defaults are valid.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."genvalidity" or (errorHandler.buildDepError "genvalidity"))
          (hsPkgs."genvalidity-containers" or (errorHandler.buildDepError "genvalidity-containers"))
          (hsPkgs."genvalidity-path" or (errorHandler.buildDepError "genvalidity-path"))
          (hsPkgs."genvalidity-text" or (errorHandler.buildDepError "genvalidity-text"))
          (hsPkgs."sydtest-mutation-driver" or (errorHandler.buildDepError "sydtest-mutation-driver"))
        ];
        buildable = true;
      };
      tests = {
        "sydtest-mutation-driver-gen-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."genvalidity-sydtest" or (errorHandler.buildDepError "genvalidity-sydtest"))
            (hsPkgs."path" or (errorHandler.buildDepError "path"))
            (hsPkgs."path-io" or (errorHandler.buildDepError "path-io"))
            (hsPkgs."safe-coloured-text" or (errorHandler.buildDepError "safe-coloured-text"))
            (hsPkgs."sydtest" or (errorHandler.buildDepError "sydtest"))
            (hsPkgs."sydtest-mutation-driver" or (errorHandler.buildDepError "sydtest-mutation-driver"))
            (hsPkgs."sydtest-mutation-driver-gen" or (errorHandler.buildDepError "sydtest-mutation-driver-gen"))
            (hsPkgs."sydtest-mutation-runtime" or (errorHandler.buildDepError "sydtest-mutation-runtime"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.sydtest-discover.components.exes.sydtest-discover or (pkgs.pkgsBuildBuild.sydtest-discover or (errorHandler.buildToolDepError "sydtest-discover:sydtest-discover")))
          ];
          buildable = true;
        };
      };
    };
  }