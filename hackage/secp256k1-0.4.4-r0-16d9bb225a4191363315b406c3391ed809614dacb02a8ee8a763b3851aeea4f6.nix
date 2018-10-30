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
        name = "secp256k1";
        version = "0.4.4";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "(c) 2016 Jean-Pierre Rupp";
      maintainer = "Jean-Pierre Rupp <root@haskoin.com>";
      author = "Jean-Pierre Rupp <root@haskoin.com>";
      homepage = "http://github.com/haskoin/secp256k1#readme";
      url = "";
      synopsis = "Bindings for secp256k1 library from Bitcoin Core";
      description = "Please see README.md";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base16-bytestring)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.entropy)
          (hsPkgs.largeword)
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
            (hsPkgs.binary)
            (hsPkgs.bytestring)
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