{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "music-preludes";
          version = "1.7.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Hans Hoglund";
        author = "Hans Hoglund";
        homepage = "";
        url = "";
        synopsis = "Some useful preludes for the Music Suite.";
        description = "Some useful preludes for the Music Suite.\n\nThis library is part of the Music Suite, see <http://music-suite.github.io>.";
        buildType = "Simple";
      };
      components = {
        "music-preludes" = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.lens
            hsPkgs.split
            hsPkgs.containers
            hsPkgs.vector-space
            hsPkgs.vector-space-points
            hsPkgs.process
            hsPkgs.filepath
            hsPkgs.temporary
            hsPkgs.optparse-applicative
            hsPkgs.average
            hsPkgs.semigroups
            hsPkgs.data-default
            hsPkgs.monadplus
            hsPkgs.reverse-apply
            hsPkgs.lilypond
            hsPkgs.musicxml2
            hsPkgs.music-score
            hsPkgs.music-pitch
            hsPkgs.music-dynamics
            hsPkgs.music-articulation
            hsPkgs.music-parts
            hsPkgs.music-pitch-literal
            hsPkgs.music-dynamics-literal
            hsPkgs.async
          ] ++ pkgs.lib.optional (!system.isWindows) hsPkgs.unix;
        };
        exes = {
          "music2ly" = {
            depends  = [
              hsPkgs.base
              hsPkgs.music-preludes
            ];
          };
          "music2pdf" = {
            depends  = [
              hsPkgs.base
              hsPkgs.music-preludes
            ];
          };
          "music2png" = {
            depends  = [
              hsPkgs.base
              hsPkgs.music-preludes
            ];
          };
          "music2svg" = {
            depends  = [
              hsPkgs.base
              hsPkgs.music-preludes
            ];
          };
          "music2musicxml" = {
            depends  = [
              hsPkgs.base
              hsPkgs.music-preludes
            ];
          };
          "music2midi" = {
            depends  = [
              hsPkgs.base
              hsPkgs.music-preludes
            ];
          };
        };
        tests = {
          "regression" = {
            depends  = [
              hsPkgs.base
              hsPkgs.tasty
              hsPkgs.tasty-golden
              hsPkgs.process
            ];
          };
        };
      };
    }