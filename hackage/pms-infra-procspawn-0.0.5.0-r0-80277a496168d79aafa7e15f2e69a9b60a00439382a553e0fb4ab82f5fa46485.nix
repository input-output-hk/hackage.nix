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
      specVersion = "2.4";
      identifier = { name = "pms-infra-procspawn"; version = "0.0.5.0"; };
      license = "Apache-2.0";
      copyright = "2025-2026 phoityne.hs@gmail.com";
      maintainer = "phoityne.hs@gmail.com";
      author = "phoityne.hs@gmail.com";
      homepage = "https://github.com/phoityne/pms-infra-procspawn";
      url = "";
      synopsis = "pms-infra-procspawn";
      description = "README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
          (hsPkgs."fast-logger" or (errorHandler.buildDepError "fast-logger"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."pms-domain-model" or (errorHandler.buildDepError "pms-domain-model"))
        ];
        buildable = true;
      };
      tests = {
        "pms-infra-procspawn-test" = {
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
            (hsPkgs."pms-infra-procspawn" or (errorHandler.buildDepError "pms-infra-procspawn"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.hspec-discover.components.exes.hspec-discover or (pkgs.pkgsBuildBuild.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ];
          buildable = true;
        };
      };
    };
  }