{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "data-easy"; version = "0.6.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jmacristovao@gmail.com";
      author = "João Cristóvão";
      homepage = "https://github.com/jcristovao/data-easy";
      url = "";
      synopsis = "Consistent set of utility functions for Maybe, Either, List and Monoids.";
      description = "Easy to use set of utility functions, implementing a Data.Maybe like\ninterface for other common types, like Either, List, Bool, Tuple,\nor even member of the Monoid type class.\nAlso features a set of conversion functions among them,\nusing sensible defaults.\n\nMost of these functions are one liners, and this library started out as a\nself-educational project, which nevertheless proved to to be useful on its\nown right.\n\nPlease feel free to contribute and/or suggest changes.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.safe) (hsPkgs.containers) ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.transformers)
            (hsPkgs.safe)
            (hsPkgs.containers)
            (hsPkgs.text)
            (hsPkgs.errors)
            (hsPkgs.directory)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.hspec)
            (hsPkgs.unix)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.hlint)
            ];
          };
        };
      };
    }