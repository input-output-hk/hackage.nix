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
      identifier = {
        name = "distributed-fork-aws-lambda";
        version = "0.0.2.0";
        };
      license = "BSD-3-Clause";
      copyright = "Utku Demir";
      maintainer = "Utku Demir <me@utdemir.com>";
      author = "Utku Demir";
      homepage = "https://github.com/utdemir/distributed-fork";
      url = "";
      synopsis = "AWS Lambda backend for distributed-fork.";
      description = "<https://aws.amazon.com/lambda AWS Lambda> backend for <http://hackage.haskell.org/package/distributed-fork distributed-fork>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."distributed-fork" or (errorHandler.buildDepError "distributed-fork"))
          (hsPkgs."SHA" or (errorHandler.buildDepError "SHA"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."aeson-qq" or (errorHandler.buildDepError "aeson-qq"))
          (hsPkgs."amazonka" or (errorHandler.buildDepError "amazonka"))
          (hsPkgs."amazonka-cloudformation" or (errorHandler.buildDepError "amazonka-cloudformation"))
          (hsPkgs."amazonka-core" or (errorHandler.buildDepError "amazonka-core"))
          (hsPkgs."amazonka-lambda" or (errorHandler.buildDepError "amazonka-lambda"))
          (hsPkgs."amazonka-s3" or (errorHandler.buildDepError "amazonka-s3"))
          (hsPkgs."amazonka-sqs" or (errorHandler.buildDepError "amazonka-sqs"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."elf" or (errorHandler.buildDepError "elf"))
          (hsPkgs."interpolate" or (errorHandler.buildDepError "interpolate"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."lens-aeson" or (errorHandler.buildDepError "lens-aeson"))
          (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."stratosphere" or (errorHandler.buildDepError "stratosphere"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."zip-archive" or (errorHandler.buildDepError "zip-archive"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."distributed-fork" or (errorHandler.buildDepError "distributed-fork"))
            (hsPkgs."distributed-fork-aws-lambda" or (errorHandler.buildDepError "distributed-fork-aws-lambda"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }