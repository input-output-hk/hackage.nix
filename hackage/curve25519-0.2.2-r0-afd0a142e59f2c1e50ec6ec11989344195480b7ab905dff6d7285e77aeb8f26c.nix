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
        name = "curve25519";
        version = "0.2.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Adam Wick <awick@uhsure.com>";
      author = "Adam Wick <awick@uhsure.com>";
      homepage = "http://github.com/acw/curve25519";
      url = "";
      synopsis = "Fast implementations of the curve25519 elliptic curve primitives.";
      description = "Haskell bindings and extensions to the curve25519-donna\ncodebase.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.crypto-api)
        ];
      };
      tests = {
        "test-curve25519" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.crypto-api)
            (hsPkgs.curve25519)
            (hsPkgs.DRBG)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.tagged)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
          ];
        };
      };
    };
  }