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
      specVersion = "2.2";
      identifier = { name = "hnix-store-json"; version = "0.1.0.0"; };
      license = "Apache-2.0";
      copyright = "2023 Sorki";
      maintainer = "srk@48.io";
      author = "Sorki";
      homepage = "https://github.com/haskell-nix/hnix-store";
      url = "";
      synopsis = "JSON serialization for core types";
      description = "Aeson instances for core types, required for remote store protocol";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hnix-store-core" or (errorHandler.buildDepError "hnix-store-core"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."deriving-aeson" or (errorHandler.buildDepError "deriving-aeson"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "json" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hnix-store-core" or (errorHandler.buildDepError "hnix-store-core"))
            (hsPkgs."hnix-store-json" or (errorHandler.buildDepError "hnix-store-json"))
            (hsPkgs."hnix-store-tests" or (errorHandler.buildDepError "hnix-store-tests"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.hspec-discover.components.exes.hspec-discover or (pkgs.pkgsBuildBuild.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ];
          buildable = true;
        };
      };
    };
  }