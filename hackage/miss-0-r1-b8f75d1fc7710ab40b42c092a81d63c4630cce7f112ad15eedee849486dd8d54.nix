{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "miss"; version = "0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2015-2018 Alec Heller & davean";
      maintainer = "oss@xkcd.com";
      author = "Alec Heller & davean";
      homepage = "https://oss.xkcd.com/";
      url = "";
      synopsis = "A Haskell git implimentation";
      description = "An implimentation of git in Haskell.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.base16-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.cryptohash-sha1)
          (hsPkgs.deepseq)
          (hsPkgs.digest)
          (hsPkgs.exceptions)
          (hsPkgs.filesystem-abstractions)
          (hsPkgs.list-tries)
          (hsPkgs.mtl)
          (hsPkgs.posix-paths)
          (hsPkgs.semigroups)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.vector)
          (hsPkgs.text)
          (hsPkgs.unix)
          (hsPkgs.zlib)
          ];
        };
      tests = {
        "miss-tests" = {
          depends = [
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.miss)
            (hsPkgs.base16-bytestring)
            (hsPkgs.bytestring)
            (hsPkgs.ChasingBottoms)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.exceptions)
            (hsPkgs.mtl)
            (hsPkgs.posix-paths)
            (hsPkgs.process)
            (hsPkgs.QuickCheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-test-vector)
            (hsPkgs.temporary)
            (hsPkgs.text)
            (hsPkgs.unix)
            ];
          };
        };
      };
    }