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
    flags = { sydtest_integration_tests = true; };
    package = {
      specVersion = "1.12";
      identifier = {
        name = "sydtest-persistent-postgresql";
        version = "0.2.0.0";
        };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2021 Tom Sydney Kerckhove";
      maintainer = "syd@cs-syd.eu";
      author = "Tom Sydney Kerckhove";
      homepage = "https://github.com/NorfairKing/sydtest#readme";
      url = "";
      synopsis = "An persistent-postgresql companion library for sydtest";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."persistent" or (errorHandler.buildDepError "persistent"))
          (hsPkgs."persistent-postgresql" or (errorHandler.buildDepError "persistent-postgresql"))
          (hsPkgs."sydtest" or (errorHandler.buildDepError "sydtest"))
          (hsPkgs."sydtest-persistent" or (errorHandler.buildDepError "sydtest-persistent"))
          (hsPkgs."tmp-postgres" or (errorHandler.buildDepError "tmp-postgres"))
          ];
        buildable = true;
        };
      tests = {
        "sydtest-persistent-postgresql-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."persistent" or (errorHandler.buildDepError "persistent"))
            (hsPkgs."persistent-postgresql" or (errorHandler.buildDepError "persistent-postgresql"))
            (hsPkgs."persistent-template" or (errorHandler.buildDepError "persistent-template"))
            (hsPkgs."sydtest" or (errorHandler.buildDepError "sydtest"))
            (hsPkgs."sydtest-persistent-postgresql" or (errorHandler.buildDepError "sydtest-persistent-postgresql"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.sydtest-discover.components.exes.sydtest-discover or (pkgs.buildPackages.sydtest-discover or (errorHandler.buildToolDepError "sydtest-discover:sydtest-discover")))
            ];
          buildable = if flags.sydtest_integration_tests then true else false;
          };
        };
      };
    }