{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "cloud-seeder";
        version = "0.2.0.0";
      };
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
      "cloud-seeder" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.amazonka)
          (hsPkgs.amazonka-cloudformation)
          (hsPkgs.amazonka-core)
          (hsPkgs.amazonka-kms)
          (hsPkgs.amazonka-s3)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.crypto-api)
          (hsPkgs.deepseq)
          (hsPkgs.exceptions)
          (hsPkgs.lens)
          (hsPkgs.monad-control)
          (hsPkgs.monad-logger)
          (hsPkgs.mtl)
          (hsPkgs.optparse-applicative)
          (hsPkgs.text)
          (hsPkgs.text-conversions)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.unordered-containers)
          (hsPkgs.uuid)
          (hsPkgs.yaml)
        ];
      };
      tests = {
        "cloud-seeder-test-suite" = {
          depends  = [
            (hsPkgs.amazonka-cloudformation)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cloud-seeder)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.fast-logger)
            (hsPkgs.hspec)
            (hsPkgs.lens)
            (hsPkgs.monad-logger)
            (hsPkgs.monad-mock)
            (hsPkgs.mtl)
            (hsPkgs.optparse-applicative)
            (hsPkgs.text)
            (hsPkgs.these)
            (hsPkgs.transformers)
            (hsPkgs.yaml)
          ];
        };
      };
    };
  }