{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "music-articulation";
          version = "1.9.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Hans Hoglund";
        author = "Hans Hoglund";
        homepage = "";
        url = "";
        synopsis = "Abstract representation of musical articulation.";
        description = "Abstract representation of musical articulation (staccato, legato etc).\nThis library is part of the Music Suite, see <http://music-suite.github.io>.";
        buildType = "Simple";
      };
      components = {
        music-articulation = {
          depends  = [
            hsPkgs.base
            hsPkgs.average
            hsPkgs.semigroups
          ];
        };
      };
    }