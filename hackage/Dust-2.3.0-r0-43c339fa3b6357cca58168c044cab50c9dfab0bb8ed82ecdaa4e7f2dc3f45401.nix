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
      specVersion = "1.8";
      identifier = {
        name = "Dust";
        version = "2.3.0";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "brandon@ischool.utexas.edu";
      author = "Brandon Wiley";
      homepage = "";
      url = "";
      synopsis = "Polymorphic protocol engine";
      description = "Dust is a polymorphic protocol engine designed to circumvent Internet filtering based on protocol identification";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.Dust-crypto)
          (hsPkgs.bytestring)
          (hsPkgs.entropy)
          (hsPkgs.network)
          (hsPkgs.cereal)
          (hsPkgs.ghc-prim)
          (hsPkgs.binary)
          (hsPkgs.random)
          (hsPkgs.random-extras)
          (hsPkgs.random-source)
          (hsPkgs.random-fu)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.split)
          (hsPkgs.skein)
          (hsPkgs.crypto-api)
          (hsPkgs.cryptohash)
          (hsPkgs.threefish)
        ];
      };
      tests = {
        "crypto" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Dust)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.bytestring)
            (hsPkgs.threefish)
            (hsPkgs.cereal)
            (hsPkgs.ghc-prim)
            (hsPkgs.QuickCheck)
          ];
        };
        "core" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Dust)
            (hsPkgs.Dust-crypto)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-th)
            (hsPkgs.bytestring)
            (hsPkgs.threefish)
            (hsPkgs.cereal)
            (hsPkgs.ghc-prim)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }