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
        name = "keccak";
        version = "0.2.0";
      };
      license = "MIT";
      copyright = "2018 Roy Blankman";
      maintainer = "blankman@boustro.com";
      author = "Roy Blankman";
      homepage = "https://github.com/aupiff/keccak#readme";
      url = "";
      synopsis = "cryptographic functions based on the sponge construction";
      description = "pure haskell implementation of keccak hash functions for\nuse with ghc or ghcjs";
      buildType = "Simple";
    };
    components = {
      "keccak" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.vector)
        ];
      };
      exes = {
        "collision" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.base16-bytestring)
            (hsPkgs.bytestring)
            (hsPkgs.keccak)
          ];
        };
      };
      tests = {
        "keccak-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.base16-bytestring)
            (hsPkgs.bytestring)
            (hsPkgs.cryptonite)
            (hsPkgs.keccak)
            (hsPkgs.HUnit)
            (hsPkgs.memory)
            (hsPkgs.parsec)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.text)
          ];
        };
      };
      benchmarks = {
        "self" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cryptonite)
            (hsPkgs.gauge)
            (hsPkgs.keccak)
            (hsPkgs.memory)
          ];
        };
      };
    };
  }