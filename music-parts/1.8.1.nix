{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "music-parts";
          version = "1.8.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Hans Hoglund";
        author = "Hans Hoglund";
        homepage = "";
        url = "";
        synopsis = "Musical instruments, parts and playing techniques.";
        description = "Abstract representation of musical parts and instruments.\n\nThis library is part of the Music Suite, see <http://music-suite.github.io>.";
        buildType = "Simple";
      };
      components = {
        music-parts = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.aeson
            hsPkgs.lens
            hsPkgs.semigroups
            hsPkgs.data-default
            hsPkgs.adjunctions
            hsPkgs.roman-numerals
            hsPkgs.music-pitch
            hsPkgs.music-dynamics
          ];
        };
      };
    }