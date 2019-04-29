{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "poly"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Andrew Lelechenko";
      maintainer = "andrew.lelechenko@gmail.com";
      author = "Andrew Lelechenko";
      homepage = "https://github.com/Bodigrim/poly#readme";
      url = "";
      synopsis = "Polynomials";
      description = "Polynomials with `Num` and `Semiring` instances, backed by `Vector`.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.primitive)
          (hsPkgs.semirings)
          (hsPkgs.vector)
          ];
        };
      tests = {
        "poly-tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.poly)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-classes)
            (hsPkgs.semirings)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.vector)
            ];
          };
        };
      };
    }