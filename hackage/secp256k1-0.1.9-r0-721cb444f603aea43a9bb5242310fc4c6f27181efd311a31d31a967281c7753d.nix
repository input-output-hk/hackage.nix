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
        name = "secp256k1";
        version = "0.1.9";
      };
      license = "MIT";
      copyright = "(c) 2013 Pieter Wuille";
      maintainer = "root@haskoin.com";
      author = "Pieter Wuille";
      homepage = "http://github.com/haskoin/secp256k1#readme";
      url = "";
      synopsis = "secp256k1 bindings for Haskell";
      description = "Please see README.md";
      buildType = "Configure";
    };
    components = {
      "secp256k1" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.QuickCheck)
          (hsPkgs.bytestring)
          (hsPkgs.mtl)
          (hsPkgs.entropy)
          (hsPkgs.string-conversions)
          (hsPkgs.base16-bytestring)
        ];
      };
      tests = {
        "secp256k1-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.secp256k1)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.base16-bytestring)
            (hsPkgs.cryptohash)
            (hsPkgs.bytestring)
            (hsPkgs.mtl)
            (hsPkgs.entropy)
          ];
        };
      };
    };
  }