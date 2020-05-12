{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector-space" or (errorHandler.buildDepError "vector-space"))
          (hsPkgs."musicxml2" or (errorHandler.buildDepError "musicxml2"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."monadplus" or (errorHandler.buildDepError "monadplus"))
          (hsPkgs."reverse-apply" or (errorHandler.buildDepError "reverse-apply"))
          (hsPkgs."music-score" or (errorHandler.buildDepError "music-score"))
          (hsPkgs."music-pitch" or (errorHandler.buildDepError "music-pitch"))
          (hsPkgs."music-pitch-literal" or (errorHandler.buildDepError "music-pitch-literal"))
          (hsPkgs."music-dynamics" or (errorHandler.buildDepError "music-dynamics"))
          (hsPkgs."music-dynamics-literal" or (errorHandler.buildDepError "music-dynamics-literal"))
          ];
        buildable = true;
        };
      exes = {
        "complex" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."lilypond" or (errorHandler.buildDepError "lilypond"))
            (hsPkgs."musicxml2" or (errorHandler.buildDepError "musicxml2"))
            (hsPkgs."music-pitch" or (errorHandler.buildDepError "music-pitch"))
            (hsPkgs."music-score" or (errorHandler.buildDepError "music-score"))
            (hsPkgs."music-preludes" or (errorHandler.buildDepError "music-preludes"))
            ];
          buildable = true;
          };
        "duo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."lilypond" or (errorHandler.buildDepError "lilypond"))
            (hsPkgs."musicxml2" or (errorHandler.buildDepError "musicxml2"))
            (hsPkgs."music-pitch" or (errorHandler.buildDepError "music-pitch"))
            (hsPkgs."music-score" or (errorHandler.buildDepError "music-score"))
            (hsPkgs."music-preludes" or (errorHandler.buildDepError "music-preludes"))
            ];
          buildable = true;
          };
        "triplets" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."lilypond" or (errorHandler.buildDepError "lilypond"))
            (hsPkgs."musicxml2" or (errorHandler.buildDepError "musicxml2"))
            (hsPkgs."music-pitch" or (errorHandler.buildDepError "music-pitch"))
            (hsPkgs."music-score" or (errorHandler.buildDepError "music-score"))
            (hsPkgs."music-preludes" or (errorHandler.buildDepError "music-preludes"))
            ];
          buildable = true;
          };
        };
      };
    }