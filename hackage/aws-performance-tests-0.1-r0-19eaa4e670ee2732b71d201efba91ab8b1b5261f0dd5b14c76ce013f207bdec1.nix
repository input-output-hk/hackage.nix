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
    flags = { with-chart = false; };
    package = {
      specVersion = "1.16";
      identifier = { name = "aws-performance-tests"; version = "0.1"; };
      license = "MIT";
      copyright = "(c) 2014 AlephCloud, Inc.";
      maintainer = "Lars Kuhtz <lars@alephcloud.com>";
      author = "Lars Kuhtz <lars@alephcloud.com>";
      homepage = "http://github.com/alephcloud/hs-aws-performance-tests";
      url = "";
      synopsis = "Performance Tests for the Haskell bindings for Amazon Web Services (AWS)";
      description = "Performance Tests for the Haskell bindings for\n<http://hackage.haskell.org/package/aws Amazon Web Services (AWS)>.\n\nAt the current stage this package only has tests for the DynamoDb\nbindings.\n\n/IMPORTANT NOTE/\n\nBy using the dynamo-performace application from this package with your AWS API\ncredentials costs will incure to your AWS account. Depending on the provisioned\ntest table read and write throughput these costs can be in the order of several\ndollars per hour.\n\nAlso be aware that there is an option to keep the table after the tests are finished\n(for example for usage with successive test runs). If you use that option you have to\nmake sure that you delete the table yourself when you don't need it any more.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."aws" or (errorHandler.buildDepError "aws"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."errors" or (errorHandler.buildDepError "errors"))
          (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      exes = {
        "dynamodb-performance" = {
          depends = [
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."aws" or (errorHandler.buildDepError "aws"))
            (hsPkgs."aws-performance-tests" or (errorHandler.buildDepError "aws-performance-tests"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."configuration-tools" or (errorHandler.buildDepError "configuration-tools"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."errors" or (errorHandler.buildDepError "errors"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."statistics" or (errorHandler.buildDepError "statistics"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ] ++ (pkgs.lib).optionals (flags.with-chart) [
            (hsPkgs."Chart" or (errorHandler.buildDepError "Chart"))
            (hsPkgs."Chart-cairo" or (errorHandler.buildDepError "Chart-cairo"))
            (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            ];
          buildable = true;
          };
        };
      };
    }