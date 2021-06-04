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
      identifier = { name = "sydtest-typed-process"; version = "0.0.0.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2021 Tom Sydney Kerckhove";
      maintainer = "syd@cs-syd.eu";
      author = "Tom Sydney Kerckhove";
      homepage = "https://github.com/NorfairKing/sydtest#readme";
      url = "";
      synopsis = "A typed-process companion library for sydtest";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."sydtest" or (errorHandler.buildDepError "sydtest"))
          (hsPkgs."typed-process" or (errorHandler.buildDepError "typed-process"))
          ];
        buildable = true;
        };
      tests = {
        "sydtest-typed-process-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."sydtest" or (errorHandler.buildDepError "sydtest"))
            (hsPkgs."sydtest-typed-process" or (errorHandler.buildDepError "sydtest-typed-process"))
            (hsPkgs."typed-process" or (errorHandler.buildDepError "typed-process"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.sydtest-discover.components.exes.sydtest-discover or (pkgs.buildPackages.sydtest-discover or (errorHandler.buildToolDepError "sydtest-discover:sydtest-discover")))
            ];
          buildable = true;
          };
        };
      };
    }