{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "serverless-haskell";
        version = "0.3.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "akotlyarov@seek.com.au";
      author = "";
      homepage = "https://github.com/seek-oss/serverless-haskell#readme";
      url = "";
      synopsis = "Deploying Haskell code onto AWS Lambda using Serverless";
      description = "Utilities to help process the events from AWS Lambda when deployed with the serverless-haskell plugin.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.aeson-casing)
          (hsPkgs.amazonka-core)
          (hsPkgs.amazonka-kinesis)
          (hsPkgs.amazonka-s3)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.lens)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.unix)
          (hsPkgs.unordered-containers)
        ];
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.aeson-casing)
            (hsPkgs.amazonka-core)
            (hsPkgs.amazonka-kinesis)
            (hsPkgs.amazonka-s3)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.hspec)
            (hsPkgs.hspec-discover)
            (hsPkgs.lens)
            (hsPkgs.raw-strings-qq)
            (hsPkgs.serverless-haskell)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.unix)
            (hsPkgs.unordered-containers)
          ];
        };
      };
    };
  }