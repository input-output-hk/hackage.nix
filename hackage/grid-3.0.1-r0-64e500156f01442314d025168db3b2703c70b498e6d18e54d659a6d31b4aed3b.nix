{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "grid";
        version = "3.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Amy de Buitléir 2010-2012";
      maintainer = "amy@nualeargais.ie";
      author = "Amy de Buitléir";
      homepage = "";
      url = "";
      synopsis = "Tools for working with regular grids (graphs, lattices).";
      description = "Provides tools for working with regular arrangements\nof tiles, such as might be used in a board game or some\nother type of grid map. Currently supports triangular,\nsquare, and hexagonal tiles, with various 2D and\ntoroidal layouts.\nThe userguide is available at\n<https://github.com/mhwombat/grid/wiki>.\nNOTE: Version 3.0 changed the order of parameters\nfor many functions. This makes it easier for the user\nto write mapping and folding operations.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base-unicode-symbols)
          (hsPkgs.containers)
        ];
      };
      tests = {
        "grid-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.exact-combinatorics)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.grid)
            (hsPkgs.base-unicode-symbols)
          ];
        };
      };
    };
  }