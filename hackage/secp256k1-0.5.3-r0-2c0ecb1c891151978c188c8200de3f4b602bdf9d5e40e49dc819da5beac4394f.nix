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
        version = "0.5.3";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "(c) 2017 Jean-Pierre Rupp";
      maintainer = "xenog@protonmail.com";
      author = "Jean-Pierre Rupp";
      homepage = "http://github.com/haskoin/secp256k1-haskell#readme";
      url = "";
      synopsis = "Bindings for secp256k1 library from Bitcoin Core";
      description = "Please see README.md";
      buildType = "Custom";
    };
    components = {
      "secp256k1" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base16-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.entropy)
          (hsPkgs.mtl)
          (hsPkgs.QuickCheck)
          (hsPkgs.string-conversions)
        ];
      };
      tests = {
        "secp256k1-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.base16-bytestring)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.cryptohash)
            (hsPkgs.entropy)
            (hsPkgs.HUnit)
            (hsPkgs.mtl)
            (hsPkgs.QuickCheck)
            (hsPkgs.secp256k1)
            (hsPkgs.string-conversions)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
          ];
        };
      };
    };
  }