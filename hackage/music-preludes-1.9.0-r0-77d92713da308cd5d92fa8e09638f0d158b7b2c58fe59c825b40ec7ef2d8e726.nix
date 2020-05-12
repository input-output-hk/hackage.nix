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
      identifier = { name = "music-preludes"; version = "1.9.0"; };
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."vector-space" or (errorHandler.buildDepError "vector-space"))
          (hsPkgs."vector-space-points" or (errorHandler.buildDepError "vector-space-points"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."average" or (errorHandler.buildDepError "average"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."monadplus" or (errorHandler.buildDepError "monadplus"))
          (hsPkgs."lilypond" or (errorHandler.buildDepError "lilypond"))
          (hsPkgs."musicxml2" or (errorHandler.buildDepError "musicxml2"))
          (hsPkgs."music-score" or (errorHandler.buildDepError "music-score"))
          (hsPkgs."music-pitch" or (errorHandler.buildDepError "music-pitch"))
          (hsPkgs."music-dynamics" or (errorHandler.buildDepError "music-dynamics"))
          (hsPkgs."music-articulation" or (errorHandler.buildDepError "music-articulation"))
          (hsPkgs."music-parts" or (errorHandler.buildDepError "music-parts"))
          (hsPkgs."music-pitch-literal" or (errorHandler.buildDepError "music-pitch-literal"))
          (hsPkgs."music-dynamics-literal" or (errorHandler.buildDepError "music-dynamics-literal"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or (errorHandler.buildDepError "unix"));
        buildable = true;
        };
      exes = {
        "music2ly" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."music-preludes" or (errorHandler.buildDepError "music-preludes"))
            ];
          buildable = true;
          };
        "music2pdf" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."music-preludes" or (errorHandler.buildDepError "music-preludes"))
            ];
          buildable = true;
          };
        "music2png" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."music-preludes" or (errorHandler.buildDepError "music-preludes"))
            ];
          buildable = true;
          };
        "music2svg" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."music-preludes" or (errorHandler.buildDepError "music-preludes"))
            ];
          buildable = true;
          };
        "music2musicxml" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."music-preludes" or (errorHandler.buildDepError "music-preludes"))
            ];
          buildable = true;
          };
        "music2midi" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."music-preludes" or (errorHandler.buildDepError "music-preludes"))
            ];
          buildable = true;
          };
        };
      tests = {
        "regression" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-golden" or (errorHandler.buildDepError "tasty-golden"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            ];
          buildable = true;
          };
        };
      };
    }