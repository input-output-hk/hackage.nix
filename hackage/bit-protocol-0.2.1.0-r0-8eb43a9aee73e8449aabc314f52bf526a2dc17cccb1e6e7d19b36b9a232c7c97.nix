{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "bit-protocol"; version = "0.2.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Kostiantyn Rybnikov";
      maintainer = "k-bx@k-bx.com";
      author = "Kostiantyn Rybnikov";
      homepage = "https://github.com/k-bx/bit-protocol#readme";
      url = "";
      synopsis = "Encode binary protocols with some odd bit numbers into a bytestring";
      description = "Encode binary protocols with some odd bit numbers into a bytestring.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.QuickCheck)
          (hsPkgs.base)
          (hsPkgs.base64-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.dlist)
          (hsPkgs.ghc-prim)
          ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.base64-bytestring)
            (hsPkgs.bit-protocol)
            (hsPkgs.bytestring)
            (hsPkgs.dlist)
            (hsPkgs.ghc-prim)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            ];
          };
        };
      };
    }