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
        name = "grid";
        version = "7.8.10";
      };
      license = "BSD-3-Clause";
      copyright = "2010-2018 Amy de Buitléir";
      maintainer = "amy@nualeargais.ie";
      author = "Amy de Buitléir";
      homepage = "https://github.com/mhwombat/grid#readme";
      url = "";
      synopsis = "Tools for working with regular grids (graphs, lattices).";
      description = "Please see the README on GitHub at <https://github.com/mhwombat/grid#readme>";
      buildType = "Simple";
    };
    components = {
      "grid" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
        ];
      };
      tests = {
        "som-test" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.grid)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
          ];
        };
      };
    };
  }