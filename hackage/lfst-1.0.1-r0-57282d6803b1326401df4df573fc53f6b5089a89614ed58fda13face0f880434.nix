{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "lfst"; version = "1.0.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Marco Di Pietro, Claudio Greco, Corrado Mencar, Alessandro Suglia";
      author = "Marco Di Pietro, Claudio Greco, Corrado Mencar, Alessandro Suglia";
      homepage = "https://github.com/ci-fst/lfst";
      url = "";
      synopsis = "L-Fuzzy Set Theory implementation in Haskell";
      description = "If X is a collection of objects denoted generically by x, then a fuzzy set F(A) in X is a set of ordered pairs. Each of them consists of an element x and a membership function which maps x to the membership space M. The current implementation is inspired by the work of Goguen, Joseph A. \"L-fuzzy sets.\" Journal of mathematical analysis and applications 18.1 (1967).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.lattices)
          (hsPkgs.doctest)
          ];
        };
      tests = {
        "doctests" = {
          depends = [ (hsPkgs.base) (hsPkgs.doctest) (hsPkgs.QuickCheck) ];
          };
        };
      };
    }