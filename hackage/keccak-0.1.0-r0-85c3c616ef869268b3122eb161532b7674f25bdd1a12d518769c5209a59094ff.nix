{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "keccak";
        version = "0.1.0";
      };
      license = "MIT";
      copyright = "2018 Roy Blankman";
      maintainer = "riblankman@gmail.com";
      author = "Roy Blankman";
      homepage = "https://github.com/aupiff/keccak#readme";
      url = "";
      synopsis = "haskell keccak functions";
      description = "pure haskell implementation of keccak hash functions for\nuse with ghc or ghcjs";
      buildType = "Simple";
    };
    components = {
      "keccak" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
        ];
      };
      tests = {
        "keccak-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.base16-bytestring)
            (hsPkgs.keccak)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
          ];
        };
      };
    };
  }