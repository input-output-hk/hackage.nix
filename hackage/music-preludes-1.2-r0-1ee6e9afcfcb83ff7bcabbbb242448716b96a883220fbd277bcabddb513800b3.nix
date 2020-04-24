{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "music-preludes"; version = "1.2"; };
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."music-score" or ((hsPkgs.pkgs-errors).buildDepError "music-score"))
          (hsPkgs."musicxml2" or ((hsPkgs.pkgs-errors).buildDepError "musicxml2"))
          (hsPkgs."vector-space" or ((hsPkgs.pkgs-errors).buildDepError "vector-space"))
          (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
          (hsPkgs."music-pitch" or ((hsPkgs.pkgs-errors).buildDepError "music-pitch"))
          (hsPkgs."music-pitch-literal" or ((hsPkgs.pkgs-errors).buildDepError "music-pitch-literal"))
          (hsPkgs."music-dynamics" or ((hsPkgs.pkgs-errors).buildDepError "music-dynamics"))
          (hsPkgs."music-dynamics-literal" or ((hsPkgs.pkgs-errors).buildDepError "music-dynamics-literal"))
          ];
        buildable = true;
        };
      };
    }