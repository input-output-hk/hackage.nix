{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "music-dynamics";
          version = "1.3.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Hans Hoglund";
        author = "Hans Hoglund";
        homepage = "";
        url = "";
        synopsis = "Abstract representation of musical dynamics.";
        description = "Abstract representation of musical dynamic levels.\nThis library is part of the Music Suite, see <http://musicsuite.github.com>.";
        buildType = "Simple";
      };
      components = {
        "music-dynamics" = {
          depends  = [
            hsPkgs.base
            hsPkgs.unix
            hsPkgs.time
            hsPkgs.random
            hsPkgs.semigroups
            hsPkgs.semigroupoids
          ];
        };
      };
    }