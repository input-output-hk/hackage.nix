{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "music-parts";
          version = "1.6.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Hans Hoglund";
        author = "Hans Hoglund";
        homepage = "";
        url = "";
        synopsis = "To be written.";
        description = "Abstract representation of musical parts and instruments.\n\nThis library is part of the Music Suite, see <http://music-suite.github.io>.";
        buildType = "Simple";
      };
      components = {
        music-parts = {
          depends  = [
            hsPkgs.base
            hsPkgs.time
            hsPkgs.random
            hsPkgs.semigroups
            hsPkgs.semigroupoids
            hsPkgs.data-default
            hsPkgs.roman-numerals
          ];
        };
      };
    }