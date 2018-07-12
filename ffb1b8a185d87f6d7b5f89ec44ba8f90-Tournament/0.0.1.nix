{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "Tournament";
          version = "0.0.1";
        };
        license = "MIT";
        copyright = "2012, Eirik Albrigtsen";
        maintainer = "analsandblaster@gmail.com";
        author = "Eirik <clux> Albrigtsen";
        homepage = "http://github.com/clux/tournament.hs";
        url = "";
        synopsis = "Tournament related algorithms";
        description = "Tournament is a pure library which generates and updates competition\nbased structures that represent basic FFA or Duel tournaments.";
        buildType = "Simple";
      };
      components = {
        "Tournament" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.containers
          ];
        };
        tests = {
          "test-tournament" = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.containers
              hsPkgs.QuickCheck
              hsPkgs.test-framework-quickcheck2
              hsPkgs.test-framework
            ];
          };
        };
      };
    }