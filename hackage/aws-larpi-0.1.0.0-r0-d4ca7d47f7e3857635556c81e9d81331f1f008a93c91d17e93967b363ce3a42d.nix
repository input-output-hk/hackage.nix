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
      identifier = { name = "aws-larpi"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "mpg@mpg.is";
      author = "Matthías Páll Gissurarson";
      homepage = "https://github.com/Tritlo/AWS-LARPI";
      url = "";
      synopsis = "Package Haskell functions for easy use on AWS Lambda.";
      description = "The AWS LARPI package allows you to run Haskell code on AWS\nby defining a simple request handler for AWS Lambda requests, and then\npackaging it using the Dockerfile included. Uses the\n<https://docs.aws.amazon.com/lambda/latest/dg/runtimes-api.html AWS Lambda runtime API>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."req" or (errorHandler.buildDepError "req"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."modern-uri" or (errorHandler.buildDepError "modern-uri"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
        ];
        buildable = true;
      };
    };
  }