{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "cabal-cache"; version = "1.0.0.8"; };
      license = "BSD-3-Clause";
      copyright = "John Ky 2019";
      maintainer = "newhoggy@gmail.com";
      author = "John Ky";
      homepage = "https://github.com/haskell-works/cabal-cache";
      url = "";
      synopsis = "CI Assistant for Haskell projects";
      description = "CI Assistant for Haskell projects.  Implements package caching.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.amazonka)
          (hsPkgs.amazonka-core)
          (hsPkgs.amazonka-s3)
          (hsPkgs.antiope-core)
          (hsPkgs.antiope-optparse-applicative)
          (hsPkgs.antiope-s3)
          (hsPkgs.bytestring)
          (hsPkgs.conduit-extra)
          (hsPkgs.cryptonite)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.directory)
          (hsPkgs.exceptions)
          (hsPkgs.filepath)
          (hsPkgs.generic-lens)
          (hsPkgs.http-client)
          (hsPkgs.http-types)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.optparse-applicative)
          (hsPkgs.process)
          (hsPkgs.resourcet)
          (hsPkgs.selective)
          (hsPkgs.stm)
          (hsPkgs.stringsearch)
          (hsPkgs.tar)
          (hsPkgs.temporary)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.topograph)
          (hsPkgs.unliftio)
          (hsPkgs.zlib)
          ];
        };
      exes = {
        "cabal-cache" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.optparse-applicative)
            (hsPkgs.cabal-cache)
            ];
          };
        };
      tests = {
        "cabal-cache-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.antiope-core)
            (hsPkgs.antiope-s3)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.filepath)
            (hsPkgs.generic-lens)
            (hsPkgs.hedgehog)
            (hsPkgs.hspec)
            (hsPkgs.http-types)
            (hsPkgs.hw-hedgehog)
            (hsPkgs.hw-hspec-hedgehog)
            (hsPkgs.lens)
            (hsPkgs.raw-strings-qq)
            (hsPkgs.text)
            (hsPkgs.cabal-cache)
            ];
          build-tools = [ ((hsPkgs.buildPackages).hspec-discover) ];
          };
        };
      };
    }