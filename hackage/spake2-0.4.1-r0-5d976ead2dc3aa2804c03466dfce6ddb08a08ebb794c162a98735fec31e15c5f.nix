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
        name = "spake2";
        version = "0.4.1";
      };
      license = "LicenseRef-Apache";
      copyright = "";
      maintainer = "Jonathan M. Lange <jml@mumak.net>";
      author = "";
      homepage = "https://github.com/jml/haskell-spake2#readme";
      url = "";
      synopsis = "Implementation of the SPAKE2 Password-Authenticated Key Exchange algorithm";
      description = "This library implements the SPAKE2 password-authenticated key exchange\n(\"PAKE\") algorithm. This allows two parties, who share a weak password, to\nsafely derive a strong shared secret (and therefore build an\nencrypted+authenticated channel).";
      buildType = "Simple";
    };
    components = {
      "spake2" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.protolude)
          (hsPkgs.bytestring)
          (hsPkgs.cryptonite)
          (hsPkgs.memory)
        ];
      };
      exes = {
        "haskell-spake2-interop-entrypoint" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.protolude)
            (hsPkgs.cryptonite)
            (hsPkgs.memory)
            (hsPkgs.optparse-applicative)
            (hsPkgs.spake2)
          ];
        };
      };
      tests = {
        "tasty" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.protolude)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.cryptonite)
            (hsPkgs.memory)
            (hsPkgs.process)
            (hsPkgs.QuickCheck)
            (hsPkgs.spake2)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hspec)
          ];
        };
      };
    };
  }