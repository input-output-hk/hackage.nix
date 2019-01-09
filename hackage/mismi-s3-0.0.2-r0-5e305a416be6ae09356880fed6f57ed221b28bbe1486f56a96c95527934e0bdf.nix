{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "mismi-s3"; version = "0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Nick Hibberd <nhibberd@gmail.com>";
      author = "Nick Hibberd";
      homepage = "https://github.com/nhibberd/mismi";
      url = "";
      synopsis = "AWS Library";
      description = "mismi-s3 is a library that provides a set of common and useful\noperations on top of AWS S3.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mismi-core)
          (hsPkgs.mismi-s3-core)
          (hsPkgs.mismi-p)
          (hsPkgs.template-haskell)
          (hsPkgs.amazonka)
          (hsPkgs.amazonka-core)
          (hsPkgs.amazonka-s3)
          (hsPkgs.bytestring)
          (hsPkgs.bifunctors)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.directory)
          (hsPkgs.exceptions)
          (hsPkgs.extra)
          (hsPkgs.filepath)
          (hsPkgs.http-client)
          (hsPkgs.http-types)
          (hsPkgs.lifted-async)
          (hsPkgs.mtl)
          (hsPkgs.monad-loops)
          (hsPkgs.process)
          (hsPkgs.resourcet)
          (hsPkgs.semigroups)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.transformers-bifunctors)
          (hsPkgs.attoparsec)
          (hsPkgs.unix)
          (hsPkgs.async)
          (hsPkgs.retry)
          (hsPkgs.lens)
          (hsPkgs.SafeSemaphore)
          (hsPkgs.stm)
          (hsPkgs.unix-bytestring)
          (hsPkgs.time)
          (hsPkgs.unordered-containers)
          (hsPkgs.uuid)
          (hsPkgs.unliftio)
          (hsPkgs.mmorph)
          (hsPkgs.lifted-base)
          ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.amazonka)
            (hsPkgs.amazonka-core)
            (hsPkgs.amazonka-s3)
            (hsPkgs.hedgehog)
            (hsPkgs.mismi-core)
            (hsPkgs.mismi-core-test)
            (hsPkgs.mismi-s3)
            (hsPkgs.mismi-s3-core)
            (hsPkgs.mismi-s3-core-test)
            (hsPkgs.mismi-p)
            (hsPkgs.conduit)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.exceptions)
            (hsPkgs.filepath)
            (hsPkgs.http-client)
            (hsPkgs.lens)
            (hsPkgs.mtl)
            (hsPkgs.resourcet)
            (hsPkgs.temporary)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.transformers-bifunctors)
            (hsPkgs.unix)
            (hsPkgs.uuid)
            ];
          };
        "test-io" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.mismi-core)
            (hsPkgs.mismi-core-test)
            (hsPkgs.mismi-s3)
            (hsPkgs.mismi-s3-core)
            (hsPkgs.mismi-s3-core-test)
            (hsPkgs.mismi-p)
            (hsPkgs.bytestring)
            (hsPkgs.cryptohash)
            (hsPkgs.directory)
            (hsPkgs.exceptions)
            (hsPkgs.filepath)
            (hsPkgs.hedgehog)
            (hsPkgs.lens)
            (hsPkgs.mtl)
            (hsPkgs.resourcet)
            (hsPkgs.temporary)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.unix)
            (hsPkgs.uuid)
            ];
          };
        "test-reliability" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.mismi-core)
            (hsPkgs.mismi-core-test)
            (hsPkgs.mismi-s3)
            (hsPkgs.mismi-p)
            (hsPkgs.directory)
            (hsPkgs.exceptions)
            (hsPkgs.filepath)
            (hsPkgs.hedgehog)
            (hsPkgs.mtl)
            (hsPkgs.resourcet)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.unix)
            (hsPkgs.uuid)
            ];
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.mismi-core)
            (hsPkgs.mismi-core-test)
            (hsPkgs.mismi-s3)
            (hsPkgs.mismi-p)
            (hsPkgs.criterion)
            (hsPkgs.conduit-extra)
            (hsPkgs.directory)
            (hsPkgs.exceptions)
            (hsPkgs.filepath)
            (hsPkgs.hedgehog)
            (hsPkgs.mtl)
            (hsPkgs.random)
            (hsPkgs.resourcet)
            (hsPkgs.temporary)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.unix)
            (hsPkgs.uuid)
            ];
          };
        };
      };
    }