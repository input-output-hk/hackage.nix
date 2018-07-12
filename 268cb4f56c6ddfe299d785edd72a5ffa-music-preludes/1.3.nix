{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "music-preludes";
          version = "1.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Hans Hoglund";
        author = "Hans Hoglund";
        homepage = "";
        url = "";
        synopsis = "Some useful preludes for the Music Suite.";
        description = "Some useful preludes for the Music Suite.\nThis library is part of the Music Suite, see <http://musicsuite.github.com>.";
        buildType = "Simple";
      };
      components = {
        "music-preludes" = {
          depends  = [
            hsPkgs.base
            hsPkgs.vector-space
            hsPkgs.musicxml2
            hsPkgs.process
            hsPkgs.semigroups
            hsPkgs.monadplus
            hsPkgs.reverse-apply
            hsPkgs.music-score
            hsPkgs.music-pitch
            hsPkgs.music-pitch-literal
            hsPkgs.music-dynamics
            hsPkgs.music-dynamics-literal
          ];
        };
        exes = {
          "complex" = {};
          "duo" = {};
          "erlkonig" = {};
          "triplets" = {};
          "music2ly" = {};
          "music2midi" = {};
          "music2musicxml" = {};
        };
        tests = {
          "properties" = {
            depends  = [
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-th
              hsPkgs.test-framework-quickcheck
            ];
          };
        };
      };
    }