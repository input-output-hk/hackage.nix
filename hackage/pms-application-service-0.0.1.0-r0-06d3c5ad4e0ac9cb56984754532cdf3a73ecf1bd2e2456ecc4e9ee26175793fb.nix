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
      specVersion = "3.12";
      identifier = { name = "pms-application-service"; version = "0.0.1.0"; };
      license = "Apache-2.0";
      copyright = "2025-2026 phoityne.hs@gmail.com";
      maintainer = "phoityne.hs@gmail.com";
      author = "phoityne.hs@gmail.com";
      homepage = "https://github.com/phoityne/pms-application-service";
      url = "";
      synopsis = "pms-application-service";
      description = "README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."fast-logger" or (errorHandler.buildDepError "fast-logger"))
          (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
          (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
          (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."async-pool" or (errorHandler.buildDepError "async-pool"))
          (hsPkgs."pms-domain-model" or (errorHandler.buildDepError "pms-domain-model"))
        ];
        buildable = true;
      };
      tests = {
        "pms-application-service-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-discover" or (errorHandler.buildDepError "hspec-discover"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."pms-domain-model" or (errorHandler.buildDepError "pms-domain-model"))
            (hsPkgs."pms-application-service" or (errorHandler.buildDepError "pms-application-service"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.hspec-discover.components.exes.hspec-discover or (pkgs.pkgsBuildBuild.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ];
          buildable = true;
        };
      };
    };
  }