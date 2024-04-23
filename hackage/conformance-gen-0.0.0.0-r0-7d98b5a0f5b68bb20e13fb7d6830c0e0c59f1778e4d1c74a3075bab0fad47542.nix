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
      identifier = { name = "conformance-gen"; version = "0.0.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Tom Sydney Kerckhove <syd@cs-syd.eu>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "";
      description = "Testutils for conformance";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."conformance" or (errorHandler.buildDepError "conformance"))
          (hsPkgs."sydtest" or (errorHandler.buildDepError "sydtest"))
        ];
        buildable = true;
      };
      tests = {
        "conformance-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."conformance" or (errorHandler.buildDepError "conformance"))
            (hsPkgs."genvalidity-sydtest" or (errorHandler.buildDepError "genvalidity-sydtest"))
            (hsPkgs."sydtest" or (errorHandler.buildDepError "sydtest"))
          ];
          build-tools = [
            (hsPkgs.buildPackages.sydtest-discover.components.exes.sydtest-discover or (pkgs.buildPackages.sydtest-discover or (errorHandler.buildToolDepError "sydtest-discover:sydtest-discover")))
          ];
          buildable = true;
        };
      };
    };
  }