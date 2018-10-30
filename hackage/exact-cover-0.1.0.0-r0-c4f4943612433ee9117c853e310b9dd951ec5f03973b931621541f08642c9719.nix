{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      buildexamples = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "exact-cover";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2017, Arthur Lee";
      maintainer = "me@arthur.li";
      author = "Arthur Lee";
      homepage = "https://github.com/arthurl/exact-cover";
      url = "";
      synopsis = "Efficient exact cover solver.";
      description = "Fast solver for exact set cover problems\n(<http://en.wikipedia.org/wiki/Exact_cover>) using Algorithm X as described in\nthe paper /Dancing Links/, by Donald Knuth, in\n/Millennial Perspectives in Computer Science/, P159, 2000\n(<https://arxiv.org/abs/cs/0011047>).\n\nTo get started, see the documentation for the \"Math.ExactCover\" module below.\n\nBuild examples with @cabal install -fbuildExamples@ or @stack build --flag\nexact-cover:buildExamples@. Examples include a Sudoku solver.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
        ];
      };
      exes = {
        "sudoku" = {
          depends  = [
            (hsPkgs.exact-cover)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.vector)
            (hsPkgs.safe)
            (hsPkgs.boxes)
          ];
        };
      };
      tests = {
        "tasty" = {
          depends  = [
            (hsPkgs.exact-cover)
            (hsPkgs.base)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.containers)
          ];
        };
      };
    };
  }