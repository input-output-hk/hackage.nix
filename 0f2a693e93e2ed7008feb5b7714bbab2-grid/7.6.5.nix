{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "grid";
        version = "7.6.5";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Amy de BuitlÃ©ir 2010-2014";
      maintainer = "amy@nualeargais.ie";
      author = "Amy de BuitlÃ©ir";
      homepage = "https://github.com/mhwombat/grid";
      url = "";
      synopsis = "Tools for working with regular grids (graphs, lattices).";
      description = "Provides tools for working with regular arrangements\nof tiles, such as might be used in a board game or some\nother type of grid map. Currently supports triangular,\nsquare, and hexagonal tiles, with various 2D and\ntoroidal layouts.\nThe userguide is available at\n<https://github.com/mhwombat/grid/wiki>.";
      buildType = "Simple";
    };
    components = {
      "grid" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.cereal)
          (hsPkgs.containers)
        ];
      };
      tests = {
        "grid-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.grid)
          ];
        };
      };
    };
  }