{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "music-pitch";
          version = "1.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Hans Hoglund";
        author = "Hans Hoglund";
        homepage = "";
        url = "";
        synopsis = "Abstract representation of musical pitch.";
        description = "Abstract representation of musical pitch.\nThis library is part of the Music Suite        , see <http://musicsuite.github.com>.";
        buildType = "Simple";
      };
      components = {
        music-pitch = {
          depends  = [
            hsPkgs.base
            hsPkgs.unix
            hsPkgs.time
            hsPkgs.random
            hsPkgs.semigroups
            hsPkgs.semigroupoids
            hsPkgs.music-pitch-literal
            hsPkgs.vector-space
          ];
        };
      };
    }