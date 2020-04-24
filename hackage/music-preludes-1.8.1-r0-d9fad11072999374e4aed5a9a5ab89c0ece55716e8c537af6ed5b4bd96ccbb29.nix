{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "music-preludes"; version = "1.8.1"; };
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
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."vector-space" or ((hsPkgs.pkgs-errors).buildDepError "vector-space"))
          (hsPkgs."vector-space-points" or ((hsPkgs.pkgs-errors).buildDepError "vector-space-points"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."temporary" or ((hsPkgs.pkgs-errors).buildDepError "temporary"))
          (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
          (hsPkgs."average" or ((hsPkgs.pkgs-errors).buildDepError "average"))
          (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
          (hsPkgs."monadplus" or ((hsPkgs.pkgs-errors).buildDepError "monadplus"))
          (hsPkgs."lilypond" or ((hsPkgs.pkgs-errors).buildDepError "lilypond"))
          (hsPkgs."musicxml2" or ((hsPkgs.pkgs-errors).buildDepError "musicxml2"))
          (hsPkgs."music-score" or ((hsPkgs.pkgs-errors).buildDepError "music-score"))
          (hsPkgs."music-pitch" or ((hsPkgs.pkgs-errors).buildDepError "music-pitch"))
          (hsPkgs."music-dynamics" or ((hsPkgs.pkgs-errors).buildDepError "music-dynamics"))
          (hsPkgs."music-articulation" or ((hsPkgs.pkgs-errors).buildDepError "music-articulation"))
          (hsPkgs."music-parts" or ((hsPkgs.pkgs-errors).buildDepError "music-parts"))
          (hsPkgs."music-pitch-literal" or ((hsPkgs.pkgs-errors).buildDepError "music-pitch-literal"))
          (hsPkgs."music-dynamics-literal" or ((hsPkgs.pkgs-errors).buildDepError "music-dynamics-literal"))
          (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
          ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"));
        buildable = true;
        };
      exes = {
        "music2ly" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."music-preludes" or ((hsPkgs.pkgs-errors).buildDepError "music-preludes"))
            ];
          buildable = true;
          };
        "music2pdf" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."music-preludes" or ((hsPkgs.pkgs-errors).buildDepError "music-preludes"))
            ];
          buildable = true;
          };
        "music2png" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."music-preludes" or ((hsPkgs.pkgs-errors).buildDepError "music-preludes"))
            ];
          buildable = true;
          };
        "music2svg" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."music-preludes" or ((hsPkgs.pkgs-errors).buildDepError "music-preludes"))
            ];
          buildable = true;
          };
        "music2musicxml" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."music-preludes" or ((hsPkgs.pkgs-errors).buildDepError "music-preludes"))
            ];
          buildable = true;
          };
        "music2midi" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."music-preludes" or ((hsPkgs.pkgs-errors).buildDepError "music-preludes"))
            ];
          buildable = true;
          };
        };
      tests = {
        "regression" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-golden" or ((hsPkgs.pkgs-errors).buildDepError "tasty-golden"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            ];
          buildable = true;
          };
        };
      };
    }