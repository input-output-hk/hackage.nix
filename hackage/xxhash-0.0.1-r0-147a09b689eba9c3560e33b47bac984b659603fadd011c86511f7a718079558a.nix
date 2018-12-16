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
        name = "xxhash";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Christian Marie";
      author = "Christian Marie <christian@ponies.io>";
      homepage = "";
      url = "";
      synopsis = "A Haskell implementation of the xxHash algorithm";
      description = "A Haskell implementation of the xxHash algorithm, for fast\nnon-cryptographic checksums of ByteStrings.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.tagged)
          (hsPkgs.crypto-api)
        ];
      };
      tests = {
        "check" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.xxhash)
          ];
        };
      };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.criterion)
            (hsPkgs.digest)
            (hsPkgs.murmur-hash)
            (hsPkgs.deepseq)
            (hsPkgs.hashable)
            (hsPkgs.xxhash)
          ];
        };
      };
    };
  }