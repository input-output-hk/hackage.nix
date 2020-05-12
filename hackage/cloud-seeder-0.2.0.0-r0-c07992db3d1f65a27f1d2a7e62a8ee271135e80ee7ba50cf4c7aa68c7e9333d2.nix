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
      identifier = { name = "cloud-seeder"; version = "0.2.0.0"; };
      license = "ISC";
      copyright = "2018 CJ Affiliate by Conversant";
      maintainer = "Alexis King <lexi.lambda@gmail.com>, Michael Adlai Arnold <michaelaarnold@gmail.com>";
      author = "Alexis King <lexi.lambda@gmail.com>, Michael Adlai Arnold <michaelaarnold@gmail.com>";
      homepage = "https://github.com/cjdev/cloud-seeder#readme";
      url = "";
      synopsis = "A tool for interacting with AWS CloudFormation";
      description = "This package provides a DSL for creating deployment configurations, as well\nas an interpreter that reads deployment configurations in order to provision\napplication stacks to AWS CloudFormation using Amazonka.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."amazonka" or (errorHandler.buildDepError "amazonka"))
          (hsPkgs."amazonka-cloudformation" or (errorHandler.buildDepError "amazonka-cloudformation"))
          (hsPkgs."amazonka-core" or (errorHandler.buildDepError "amazonka-core"))
          (hsPkgs."amazonka-kms" or (errorHandler.buildDepError "amazonka-kms"))
          (hsPkgs."amazonka-s3" or (errorHandler.buildDepError "amazonka-s3"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."crypto-api" or (errorHandler.buildDepError "crypto-api"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."text-conversions" or (errorHandler.buildDepError "text-conversions"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
          (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
          ];
        buildable = true;
        };
      tests = {
        "cloud-seeder-test-suite" = {
          depends = [
            (hsPkgs."amazonka-cloudformation" or (errorHandler.buildDepError "amazonka-cloudformation"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cloud-seeder" or (errorHandler.buildDepError "cloud-seeder"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."fast-logger" or (errorHandler.buildDepError "fast-logger"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
            (hsPkgs."monad-mock" or (errorHandler.buildDepError "monad-mock"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."these" or (errorHandler.buildDepError "these"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
            ];
          buildable = true;
          };
        };
      };
    }