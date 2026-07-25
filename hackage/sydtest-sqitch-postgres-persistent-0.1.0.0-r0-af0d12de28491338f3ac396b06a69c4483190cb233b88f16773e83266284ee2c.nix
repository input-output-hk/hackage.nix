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
        name = "sydtest-sqitch-postgres-persistent";
        version = "0.1.0.0";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2026 Tom Sydney Kerckhove";
      maintainer = "syd@cs-syd.eu";
      author = "Tom Sydney Kerckhove";
      homepage = "https://github.com/NorfairKing/sydtest#readme";
      url = "";
      synopsis = "A sqitch-on-PostgreSQL + persistent companion library for sydtest";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
          (hsPkgs."persistent" or (errorHandler.buildDepError "persistent"))
          (hsPkgs."postgres-options" or (errorHandler.buildDepError "postgres-options"))
          (hsPkgs."sydtest" or (errorHandler.buildDepError "sydtest"))
          (hsPkgs."sydtest-persistent" or (errorHandler.buildDepError "sydtest-persistent"))
          (hsPkgs."sydtest-persistent-postgresql" or (errorHandler.buildDepError "sydtest-persistent-postgresql"))
          (hsPkgs."sydtest-sqitch-postgres" or (errorHandler.buildDepError "sydtest-sqitch-postgres"))
        ];
        buildable = true;
      };
      tests = {
        "sydtest-sqitch-postgres-persistent-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."path" or (errorHandler.buildDepError "path"))
            (hsPkgs."path-io" or (errorHandler.buildDepError "path-io"))
            (hsPkgs."persistent" or (errorHandler.buildDepError "persistent"))
            (hsPkgs."sydtest" or (errorHandler.buildDepError "sydtest"))
            (hsPkgs."sydtest-persistent-postgresql" or (errorHandler.buildDepError "sydtest-persistent-postgresql"))
            (hsPkgs."sydtest-sqitch-postgres" or (errorHandler.buildDepError "sydtest-sqitch-postgres"))
            (hsPkgs."sydtest-sqitch-postgres-persistent" or (errorHandler.buildDepError "sydtest-sqitch-postgres-persistent"))
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