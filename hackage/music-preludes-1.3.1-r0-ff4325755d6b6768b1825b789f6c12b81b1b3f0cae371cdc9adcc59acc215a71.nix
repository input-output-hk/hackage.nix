{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "music-preludes";
        version = "1.3.1";
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
          (hsPkgs.base)
          (hsPkgs.vector-space)
          (hsPkgs.musicxml2)
          (hsPkgs.process)
          (hsPkgs.semigroups)
          (hsPkgs.monadplus)
          (hsPkgs.reverse-apply)
          (hsPkgs.music-score)
          (hsPkgs.music-pitch)
          (hsPkgs.music-pitch-literal)
          (hsPkgs.music-dynamics)
          (hsPkgs.music-dynamics-literal)
        ];
      };
      exes = {
        "complex" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.process)
            (hsPkgs.lilypond)
            (hsPkgs.musicxml2)
            (hsPkgs.music-pitch)
            (hsPkgs.music-score)
            (hsPkgs.music-preludes)
          ];
        };
        "duo" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.process)
            (hsPkgs.lilypond)
            (hsPkgs.musicxml2)
            (hsPkgs.music-pitch)
            (hsPkgs.music-score)
            (hsPkgs.music-preludes)
          ];
        };
        "triplets" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.process)
            (hsPkgs.lilypond)
            (hsPkgs.musicxml2)
            (hsPkgs.music-pitch)
            (hsPkgs.music-score)
            (hsPkgs.music-preludes)
          ];
        };
      };
    };
  }