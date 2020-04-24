{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "music-preludes"; version = "1.3.1"; };
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
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."vector-space" or ((hsPkgs.pkgs-errors).buildDepError "vector-space"))
          (hsPkgs."musicxml2" or ((hsPkgs.pkgs-errors).buildDepError "musicxml2"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
          (hsPkgs."monadplus" or ((hsPkgs.pkgs-errors).buildDepError "monadplus"))
          (hsPkgs."reverse-apply" or ((hsPkgs.pkgs-errors).buildDepError "reverse-apply"))
          (hsPkgs."music-score" or ((hsPkgs.pkgs-errors).buildDepError "music-score"))
          (hsPkgs."music-pitch" or ((hsPkgs.pkgs-errors).buildDepError "music-pitch"))
          (hsPkgs."music-pitch-literal" or ((hsPkgs.pkgs-errors).buildDepError "music-pitch-literal"))
          (hsPkgs."music-dynamics" or ((hsPkgs.pkgs-errors).buildDepError "music-dynamics"))
          (hsPkgs."music-dynamics-literal" or ((hsPkgs.pkgs-errors).buildDepError "music-dynamics-literal"))
          ];
        buildable = true;
        };
      exes = {
        "complex" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."lilypond" or ((hsPkgs.pkgs-errors).buildDepError "lilypond"))
            (hsPkgs."musicxml2" or ((hsPkgs.pkgs-errors).buildDepError "musicxml2"))
            (hsPkgs."music-pitch" or ((hsPkgs.pkgs-errors).buildDepError "music-pitch"))
            (hsPkgs."music-score" or ((hsPkgs.pkgs-errors).buildDepError "music-score"))
            (hsPkgs."music-preludes" or ((hsPkgs.pkgs-errors).buildDepError "music-preludes"))
            ];
          buildable = true;
          };
        "duo" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."lilypond" or ((hsPkgs.pkgs-errors).buildDepError "lilypond"))
            (hsPkgs."musicxml2" or ((hsPkgs.pkgs-errors).buildDepError "musicxml2"))
            (hsPkgs."music-pitch" or ((hsPkgs.pkgs-errors).buildDepError "music-pitch"))
            (hsPkgs."music-score" or ((hsPkgs.pkgs-errors).buildDepError "music-score"))
            (hsPkgs."music-preludes" or ((hsPkgs.pkgs-errors).buildDepError "music-preludes"))
            ];
          buildable = true;
          };
        "triplets" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."lilypond" or ((hsPkgs.pkgs-errors).buildDepError "lilypond"))
            (hsPkgs."musicxml2" or ((hsPkgs.pkgs-errors).buildDepError "musicxml2"))
            (hsPkgs."music-pitch" or ((hsPkgs.pkgs-errors).buildDepError "music-pitch"))
            (hsPkgs."music-score" or ((hsPkgs.pkgs-errors).buildDepError "music-score"))
            (hsPkgs."music-preludes" or ((hsPkgs.pkgs-errors).buildDepError "music-preludes"))
            ];
          buildable = true;
          };
        };
      };
    }