{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "music-preludes"; version = "1.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Hans Hoglund";
      author = "Hans Hoglund";
      homepage = "";
      url = "";
      synopsis = "Some useful preludes for the Music Suite.";
      description = "Some useful preludes for the Haskell Music Suite.\nThis library is part of the Haskell Music Suite, see <http://musicsuite.github.com>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.music-score)
          (hsPkgs.musicxml2)
          (hsPkgs.vector-space)
          (hsPkgs.semigroups)
          (hsPkgs.music-pitch)
          (hsPkgs.music-pitch-literal)
          (hsPkgs.music-dynamics)
          (hsPkgs.music-dynamics-literal)
          ];
        };
      };
    }