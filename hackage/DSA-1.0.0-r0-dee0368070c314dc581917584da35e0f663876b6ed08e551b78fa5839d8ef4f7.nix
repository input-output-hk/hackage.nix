{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { gmp = true; better-tests = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "DSA"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Adam Wick <awick@galois.com>";
      author = "Adam Wick <awick@galois.com>";
      homepage = "";
      url = "";
      synopsis = "Implementation of DSA, based on the description of FIPS 186-4";
      description = "This library implements the DSA encryption and signature\nalgorithms for arbitrarily-sized ByteStrings. While the\nimplementations work, they are not necessarily the fastest ones\non the planet. Particularly key generation. The algorithms\nincluded are based of NIST's FIPS 186-4 document.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.crypto-api)
          (hsPkgs.crypto-pubkey-types)
          (hsPkgs.SHA)
          (hsPkgs.tagged)
          ] ++ (pkgs.lib).optionals (flags.gmp) [
          (hsPkgs.ghc-prim)
          (hsPkgs.integer-gmp)
          ];
        };
      tests = {
        "test-dsa" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.crypto-api)
            (hsPkgs.crypto-pubkey-types)
            (hsPkgs.DRBG)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.tagged)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.SHA)
            ] ++ (pkgs.lib).optionals (flags.gmp) [
            (hsPkgs.ghc-prim)
            (hsPkgs.integer-gmp)
            ];
          };
        };
      };
    }