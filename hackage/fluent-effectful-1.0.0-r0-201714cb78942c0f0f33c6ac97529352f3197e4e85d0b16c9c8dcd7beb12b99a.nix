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
      specVersion = "3.0";
      identifier = { name = "fluent-effectful"; version = "1.0.0"; };
      license = "EUPL-1.2";
      copyright = "";
      maintainer = "IDA";
      author = "IDA";
      homepage = "https://digital-autonomy.institute";
      url = "";
      synopsis = "Fluent effect for Effectful";
      description = "Adaptation of the @<https://hackage.haskell.org/package/fluent fluent>@ library for the @<https://hackage.haskell.org/package/effectful effectful>@ ecosystem.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."effectful" or (errorHandler.buildDepError "effectful"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."fluent" or (errorHandler.buildDepError "fluent"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."effectful" or (errorHandler.buildDepError "effectful"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."fluent-effectful" or (errorHandler.buildDepError "fluent-effectful"))
            (hsPkgs."fluent-icu" or (errorHandler.buildDepError "fluent-icu"))
            (hsPkgs."hspec-effectful" or (errorHandler.buildDepError "hspec-effectful"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.hspec-effectful-discover.components.exes.hspec-effectful-discover or (pkgs.pkgsBuildBuild.hspec-effectful-discover or (errorHandler.buildToolDepError "hspec-effectful-discover:hspec-effectful-discover")))
          ];
          buildable = true;
        };
      };
    };
  }