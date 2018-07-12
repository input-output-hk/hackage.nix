{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "music-score";
          version = "1.3.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Hans Hoglund";
        author = "Hans Hoglund";
        homepage = "";
        url = "";
        synopsis = "Musical score and part representation.";
        description = "Musical score and part representation.\nThis library is part of the Music Suite, see <http://musicsuite.github.com>.";
        buildType = "Simple";
      };
      components = {
        "music-score" = {
          depends  = [
            hsPkgs.base
            hsPkgs.QuickCheck
            hsPkgs.unix
            hsPkgs.time
            hsPkgs.random
            hsPkgs.process
            hsPkgs.data-default
            hsPkgs.containers
            hsPkgs.parsec
            hsPkgs.transformers
            hsPkgs.monadplus
            hsPkgs.prettify
            hsPkgs.HCodecs
            hsPkgs.musicxml2
            hsPkgs.lilypond
            hsPkgs.semigroups
            hsPkgs.nats
            hsPkgs.pointed
            hsPkgs.semigroupoids
            hsPkgs.vector-space
            hsPkgs.music-pitch-literal
            hsPkgs.music-dynamics-literal
            hsPkgs.reenact
          ];
        };
      };
    }