{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { live-test = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "minio-hs"; version = "1.3.1"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "dev@min.io";
      author = "MinIO Dev Team";
      homepage = "https://github.com/minio/minio-hs#readme";
      url = "";
      synopsis = "A MinIO Haskell Library for Amazon S3 compatible cloud\nstorage.";
      description = "The MinIO Haskell client library provides simple APIs to\naccess MinIO, Amazon S3 and other API compatible cloud\nstorage servers.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.protolude)
          (hsPkgs.aeson)
          (hsPkgs.base64-bytestring)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.connection)
          (hsPkgs.containers)
          (hsPkgs.cryptonite)
          (hsPkgs.cryptonite-conduit)
          (hsPkgs.digest)
          (hsPkgs.directory)
          (hsPkgs.exceptions)
          (hsPkgs.filepath)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.http-conduit)
          (hsPkgs.http-types)
          (hsPkgs.ini)
          (hsPkgs.memory)
          (hsPkgs.raw-strings-qq)
          (hsPkgs.resourcet)
          (hsPkgs.retry)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.unliftio)
          (hsPkgs.unliftio-core)
          (hsPkgs.unordered-containers)
          (hsPkgs.xml-conduit)
          ];
        };
      tests = {
        "minio-hs-live-server-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.minio-hs)
            (hsPkgs.protolude)
            (hsPkgs.QuickCheck)
            (hsPkgs.aeson)
            (hsPkgs.base64-bytestring)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.case-insensitive)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.connection)
            (hsPkgs.containers)
            (hsPkgs.cryptonite)
            (hsPkgs.cryptonite-conduit)
            (hsPkgs.digest)
            (hsPkgs.directory)
            (hsPkgs.exceptions)
            (hsPkgs.filepath)
            (hsPkgs.http-client)
            (hsPkgs.http-client-tls)
            (hsPkgs.http-conduit)
            (hsPkgs.http-types)
            (hsPkgs.ini)
            (hsPkgs.memory)
            (hsPkgs.raw-strings-qq)
            (hsPkgs.resourcet)
            (hsPkgs.retry)
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
            (hsPkgs.unordered-containers)
            (hsPkgs.xml-conduit)
            ];
          };
        "minio-hs-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.minio-hs)
            (hsPkgs.protolude)
            (hsPkgs.QuickCheck)
            (hsPkgs.aeson)
            (hsPkgs.base64-bytestring)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.case-insensitive)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.connection)
            (hsPkgs.containers)
            (hsPkgs.cryptonite)
            (hsPkgs.cryptonite-conduit)
            (hsPkgs.digest)
            (hsPkgs.directory)
            (hsPkgs.exceptions)
            (hsPkgs.filepath)
            (hsPkgs.http-client)
            (hsPkgs.http-client-tls)
            (hsPkgs.http-conduit)
            (hsPkgs.http-types)
            (hsPkgs.ini)
            (hsPkgs.memory)
            (hsPkgs.raw-strings-qq)
            (hsPkgs.resourcet)
            (hsPkgs.retry)
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
            (hsPkgs.unordered-containers)
            (hsPkgs.xml-conduit)
            ];
          };
        };
      };
    }