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
        name = "sized-grid";
        version = "0.1.1.1";
      };
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
      "sized-grid" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.lens)
          (hsPkgs.vector)
          (hsPkgs.vector-space)
          (hsPkgs.generics-sop)
          (hsPkgs.distributive)
          (hsPkgs.adjunctions)
          (hsPkgs.comonad)
          (hsPkgs.random)
          (hsPkgs.mtl)
          (hsPkgs.constraints)
          (hsPkgs.aeson)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.sized-grid)
            (hsPkgs.hedgehog)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hedgehog)
            (hsPkgs.vector-space)
            (hsPkgs.generics-sop)
            (hsPkgs.lens)
            (hsPkgs.adjunctions)
            (hsPkgs.aeson)
            (hsPkgs.HUnit)
            (hsPkgs.tasty-hunit)
          ];
        };
        "readme" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.markdown-unlit)
            (hsPkgs.sized-grid)
            (hsPkgs.distributive)
            (hsPkgs.adjunctions)
            (hsPkgs.vector-space)
            (hsPkgs.comonad)
            (hsPkgs.lens)
            (hsPkgs.ansi-terminal)
          ];
        };
      };
    };
  }