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
      identifier = { name = "servant-util-beam-pg"; version = "0.4.1"; };
      license = "MPL-2.0";
      copyright = "2019-2021 Serokell OÜ";
      maintainer = "hi@serokell.io";
      author = "Serokell";
      homepage = "https://github.com/serokell/servant-util#readme";
      url = "";
      synopsis = "Implementation of servant-util primitives for beam-postgres.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."beam-core" or (errorHandler.buildDepError "beam-core"))
          (hsPkgs."beam-postgres" or (errorHandler.buildDepError "beam-postgres"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."servant-client" or (errorHandler.buildDepError "servant-client"))
          (hsPkgs."servant-client-core" or (errorHandler.buildDepError "servant-client-core"))
          (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
          (hsPkgs."servant-util" or (errorHandler.buildDepError "servant-util"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."universum" or (errorHandler.buildDepError "universum"))
          ];
        buildable = true;
        };
      exes = {
        "servant-util-beam-pg-examples" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."beam-core" or (errorHandler.buildDepError "beam-core"))
            (hsPkgs."beam-postgres" or (errorHandler.buildDepError "beam-postgres"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
            (hsPkgs."servant-client" or (errorHandler.buildDepError "servant-client"))
            (hsPkgs."servant-client-core" or (errorHandler.buildDepError "servant-client-core"))
            (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
            (hsPkgs."servant-util" or (errorHandler.buildDepError "servant-util"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."universum" or (errorHandler.buildDepError "universum"))
            ];
          buildable = true;
          };
        };
      tests = {
        "servant-util-beam-pg-test" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."beam-core" or (errorHandler.buildDepError "beam-core"))
            (hsPkgs."beam-postgres" or (errorHandler.buildDepError "beam-postgres"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
            (hsPkgs."servant-client" or (errorHandler.buildDepError "servant-client"))
            (hsPkgs."servant-client-core" or (errorHandler.buildDepError "servant-client-core"))
            (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
            (hsPkgs."servant-util" or (errorHandler.buildDepError "servant-util"))
            (hsPkgs."servant-util-beam-pg" or (errorHandler.buildDepError "servant-util-beam-pg"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."universum" or (errorHandler.buildDepError "universum"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover.components.exes.hspec-discover or (pkgs.buildPackages.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
            ];
          buildable = true;
          };
        };
      };
    }