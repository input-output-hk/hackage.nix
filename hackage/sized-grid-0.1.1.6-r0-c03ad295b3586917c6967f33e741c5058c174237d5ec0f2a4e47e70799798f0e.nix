{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "sized-grid"; version = "0.1.1.6"; };
      license = "MIT";
      copyright = "";
      maintainer = "ed@wastell.co.uk";
      author = "edwardwas";
      homepage = "https://github.com/edwardwas/sized-grid";
      url = "";
      synopsis = "Multidimensional grids with sized specified at compile time";
      description = "`size-grid` allows you to make finite sized grids and have their size and shape confirmed at compile time\n\nConsult the readme for a short tutorial and explanation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.adjunctions)
          (hsPkgs.aeson)
          (hsPkgs.comonad)
          (hsPkgs.constraints)
          (hsPkgs.distributive)
          (hsPkgs.generics-sop)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.random)
          (hsPkgs.vector)
          (hsPkgs.vector-space)
          ];
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.aeson)
            (hsPkgs.adjunctions)
            (hsPkgs.generics-sop)
            (hsPkgs.lens)
            (hsPkgs.sized-grid)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.vector)
            (hsPkgs.vector-space)
            (hsPkgs.QuickCheck)
            (hsPkgs.tasty-quickcheck)
            ];
          };
        "readme" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.ansi-terminal)
            (hsPkgs.adjunctions)
            (hsPkgs.comonad)
            (hsPkgs.distributive)
            (hsPkgs.lens)
            (hsPkgs.markdown-unlit)
            (hsPkgs.sized-grid)
            (hsPkgs.vector-space)
            ];
          };
        };
      };
    }