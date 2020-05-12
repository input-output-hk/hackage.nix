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
      specVersion = "1.10";
      identifier = { name = "cloud-seeder"; version = "0.0.0.0"; };
      license = "ISC";
      copyright = "2017 CJ Affiliate by Conversant";
      maintainer = "Alexis King <lexi.lambda@gmail.com>, Michael Arnold <michaelaarnold@gmail.com>";
      author = "Alexis King <lexi.lambda@gmail.com>, Michael Arnold <michaelaarnold@gmail.com>";
      homepage = "https://github.com/cjdev/cloud-seeder#readme";
      url = "";
      synopsis = "A tool for interacting with AWS CloudFormation";
      description = "This package provides a DSL for creating deployment configurations, as well\nas an interpreter that reads deployment configurations in order to deploy\napplication stacks to AWS CloudFormation using Amazonka.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."amazonka" or (errorHandler.buildDepError "amazonka"))
          (hsPkgs."amazonka-cloudformation" or (errorHandler.buildDepError "amazonka-cloudformation"))
          (hsPkgs."amazonka-core" or (errorHandler.buildDepError "amazonka-core"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
          (hsPkgs."monad-time" or (errorHandler.buildDepError "monad-time"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          ];
        buildable = true;
        };
      exes = {
        "cloud-seeder" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cloud-seeder" or (errorHandler.buildDepError "cloud-seeder"))
            ];
          buildable = true;
          };
        };
      tests = {
        "cloud-seeder-test-suite" = {
          depends = [
            (hsPkgs."amazonka-cloudformation" or (errorHandler.buildDepError "amazonka-cloudformation"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cloud-seeder" or (errorHandler.buildDepError "cloud-seeder"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."fast-logger" or (errorHandler.buildDepError "fast-logger"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }