{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "poly"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Andrew Lelechenko";
      maintainer = "andrew.lelechenko@gmail.com";
      author = "Andrew Lelechenko";
      homepage = "https://github.com/Bodigrim/poly#readme";
      url = "";
      synopsis = "Polynomials";
      description = "A type to represent polynomials with Num and Semiring instances.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.semirings) (hsPkgs.vector) ];
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