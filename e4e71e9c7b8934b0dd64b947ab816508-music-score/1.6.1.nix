{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "music-score";
          version = "1.6.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Hans Hoglund";
        author = "Hans Hoglund";
        homepage = "";
        url = "";
        synopsis = "Musical score and part representation.";
        description = "Musical time struture, voices, tracks and scores.\nThis library is part of the Music Suite, see <http://music-suite.github.io>.";
        buildType = "Custom";
      };
      components = {
        "music-score" = {
          depends  = [
            hsPkgs.base
            hsPkgs.lens
            hsPkgs.process
            hsPkgs.data-default
            hsPkgs.containers
            hsPkgs.comonad
            hsPkgs.NumInstances
            hsPkgs.profunctors
            hsPkgs.transformers
            hsPkgs.monadplus
            hsPkgs.void
            hsPkgs.semigroups
            hsPkgs.monoid-extras
            hsPkgs.nats
            hsPkgs.semigroupoids
            hsPkgs.musicxml2
            hsPkgs.lilypond
            hsPkgs.HCodecs
            hsPkgs.vector-space
            hsPkgs.vector-space-points
            hsPkgs.music-pitch-literal
            hsPkgs.music-dynamics-literal
            hsPkgs.prettify
            hsPkgs.parsec
          ];
        };
      };
    }