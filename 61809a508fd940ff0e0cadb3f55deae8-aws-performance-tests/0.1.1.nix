{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      with-chart = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.16";
      identifier = {
        name = "aws-performance-tests";
        version = "0.1.1";
      };
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
      "aws-performance-tests" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.aws)
          (hsPkgs.base)
          (hsPkgs.errors)
          (hsPkgs.lifted-base)
          (hsPkgs.monad-control)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.transformers)
        ];
      };
      exes = {
        "dynamodb-performance" = {
          depends  = [
            (hsPkgs.async)
            (hsPkgs.aws)
            (hsPkgs.aws-performance-tests)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.configuration-tools)
            (hsPkgs.containers)
            (hsPkgs.dlist)
            (hsPkgs.errors)
            (hsPkgs.http-client)
            (hsPkgs.lens)
            (hsPkgs.monad-control)
            (hsPkgs.optparse-applicative)
            (hsPkgs.resourcet)
            (hsPkgs.statistics)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.vector)
          ] ++ pkgs.lib.optionals (_flags.with-chart) [
            (hsPkgs.Chart)
            (hsPkgs.Chart-cairo)
            (hsPkgs.colour)
            (hsPkgs.data-default)
          ];
        };
      };
    };
  }