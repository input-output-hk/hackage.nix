{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { live-test = true; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "minio-hs";
        version = "1.0.1";
      };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "dev@minio.io";
      author = "Minio Dev Team";
      homepage = "https://github.com/minio/minio-hs#readme";
      url = "";
      synopsis = "A Minio Haskell Library for Amazon S3 compatible cloud\nstorage.";
      description = "The Minio Haskell client library provides simple APIs to\naccess Minio, Amazon S3 and other API compatible cloud\nstorage servers.";
      buildType = "Simple";
    };
    components = {
      "minio-hs" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.protolude)
          (hsPkgs.aeson)
          (hsPkgs.base64-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.containers)
          (hsPkgs.cryptonite)
          (hsPkgs.cryptonite-conduit)
          (hsPkgs.data-default)
          (hsPkgs.filepath)
          (hsPkgs.http-client)
          (hsPkgs.http-conduit)
          (hsPkgs.http-types)
          (hsPkgs.memory)
          (hsPkgs.resourcet)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.unliftio)
          (hsPkgs.unliftio-core)
          (hsPkgs.xml-conduit)
        ];
      };
      tests = {
        "minio-hs-live-server-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.minio-hs)
            (hsPkgs.protolude)
            (hsPkgs.aeson)
            (hsPkgs.base64-bytestring)
            (hsPkgs.bytestring)
            (hsPkgs.case-insensitive)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.containers)
            (hsPkgs.cryptonite)
            (hsPkgs.cryptonite-conduit)
            (hsPkgs.data-default)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.http-client)
            (hsPkgs.http-conduit)
            (hsPkgs.http-types)
            (hsPkgs.memory)
            (hsPkgs.QuickCheck)
            (hsPkgs.resourcet)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-smallcheck)
            (hsPkgs.temporary)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.unliftio)
            (hsPkgs.unliftio-core)
            (hsPkgs.xml-conduit)
          ];
        };
        "minio-hs-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.minio-hs)
            (hsPkgs.protolude)
            (hsPkgs.aeson)
            (hsPkgs.base64-bytestring)
            (hsPkgs.bytestring)
            (hsPkgs.case-insensitive)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.containers)
            (hsPkgs.cryptonite)
            (hsPkgs.cryptonite-conduit)
            (hsPkgs.data-default)
            (hsPkgs.directory)
            (hsPkgs.http-client)
            (hsPkgs.http-conduit)
            (hsPkgs.http-types)
            (hsPkgs.memory)
            (hsPkgs.QuickCheck)
            (hsPkgs.resourcet)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-smallcheck)
            (hsPkgs.temporary)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.unliftio)
            (hsPkgs.unliftio-core)
            (hsPkgs.xml-conduit)
          ];
        };
      };
    };
  }