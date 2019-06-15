{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { unsafeindices = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "easytensor"; version = "2.0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2019 Artem Chirkin";
      maintainer = "achirkin@users.noreply.github.com";
      author = "Artem Chirkin";
      homepage = "https://github.com/achirkin/easytensor#readme";
      url = "";
      synopsis = "Pure, type-indexed haskell vector, matrix, and tensor library.";
      description = "Pure, type-indexed haskell vector, matrix, and tensor library. Features dimensionality type-checking for all operations. Generic n-dimensional versions are implemented using low-level prim ops. Allows ad-hoc replacement with fixed low-dimensionality vectors and matrices without changing user interface. Please see the README on GitHub at <https://github.com/achirkin/easytensor#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.constraints-deriving)
          (hsPkgs.dimensions)
          ];
        };
      tests = {
        "et-test" = {
          depends = [
            (hsPkgs.Cabal)
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.constraints-deriving)
            (hsPkgs.dimensions)
            (hsPkgs.easytensor)
            (hsPkgs.template-haskell)
            ];
          };
        };
      benchmarks = {
        "et-bench-misc" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.constraints-deriving)
            (hsPkgs.dimensions)
            (hsPkgs.easytensor)
            ];
          };
        "et-bench-spfolds" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.constraints-deriving)
            (hsPkgs.dimensions)
            (hsPkgs.easytensor)
            (hsPkgs.time)
            ];
          };
        };
      };
    }