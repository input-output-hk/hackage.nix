{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "music-score";
          version = "1.2.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Hans Hoglund";
        author = "Hans Hoglund";
        homepage = "";
        url = "";
        synopsis = "Musical score and part representation.";
        description = "Musical score and part representation.\nThis library is part of the Haskell Music Suite, see <http://musicsuite.github.com>.";
        buildType = "Simple";
      };
      components = {
        music-score = {
          depends  = [
            hsPkgs.base
            hsPkgs.unix
            hsPkgs.time
            hsPkgs.random
            hsPkgs.containers
            hsPkgs.parsec
            hsPkgs.transformers
            hsPkgs.HCodecs
            hsPkgs.musicxml2
            hsPkgs.semigroups
            hsPkgs.nats
            hsPkgs.semigroupoids
            hsPkgs.vector-space
            hsPkgs.music-pitch-literal
            hsPkgs.music-dynamics-literal
            hsPkgs.reenact
          ];
        };
        exes = {
          music-score-tests = {};
        };
      };
    }