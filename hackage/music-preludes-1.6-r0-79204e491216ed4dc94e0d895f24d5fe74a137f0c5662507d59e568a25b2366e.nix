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
        version = "1.6";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Hans Hoglund";
      author = "Hans Hoglund";
      homepage = "";
      url = "";
      synopsis = "Some useful preludes for the Music Suite.";
      description = "Some useful preludes for the Music Suite.\nThis library is part of the Music Suite, see <http://music-suite.github.io>.";
      buildType = "Simple";
    };
    components = {
      "music-preludes" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.lens)
          (hsPkgs.vector-space)
          (hsPkgs.vector-space-points)
          (hsPkgs.lilypond)
          (hsPkgs.musicxml2)
          (hsPkgs.process)
          (hsPkgs.semigroups)
          (hsPkgs.data-default)
          (hsPkgs.monadplus)
          (hsPkgs.reverse-apply)
          (hsPkgs.music-score)
          (hsPkgs.music-pitch)
          (hsPkgs.music-dynamics)
          (hsPkgs.music-parts)
          (hsPkgs.music-pitch-literal)
          (hsPkgs.music-dynamics-literal)
        ];
      };
    };
  }