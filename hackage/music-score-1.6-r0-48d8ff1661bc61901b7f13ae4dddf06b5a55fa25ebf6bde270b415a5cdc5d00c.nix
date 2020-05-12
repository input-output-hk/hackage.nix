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
      identifier = { name = "music-score"; version = "1.6"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Hans Hoglund";
      author = "Hans Hoglund";
      homepage = "";
      url = "";
      synopsis = "Musical score and part representation.";
      description = "Musical time struture, voices, tracks and scores.\nThis library is part of the Music Suite, see <http://music-suite.github.io>.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."comonad" or (errorHandler.buildDepError "comonad"))
          (hsPkgs."NumInstances" or (errorHandler.buildDepError "NumInstances"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."monadplus" or (errorHandler.buildDepError "monadplus"))
          (hsPkgs."void" or (errorHandler.buildDepError "void"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."monoid-extras" or (errorHandler.buildDepError "monoid-extras"))
          (hsPkgs."nats" or (errorHandler.buildDepError "nats"))
          (hsPkgs."semigroupoids" or (errorHandler.buildDepError "semigroupoids"))
          (hsPkgs."musicxml2" or (errorHandler.buildDepError "musicxml2"))
          (hsPkgs."lilypond" or (errorHandler.buildDepError "lilypond"))
          (hsPkgs."HCodecs" or (errorHandler.buildDepError "HCodecs"))
          (hsPkgs."vector-space" or (errorHandler.buildDepError "vector-space"))
          (hsPkgs."vector-space-points" or (errorHandler.buildDepError "vector-space-points"))
          (hsPkgs."music-pitch-literal" or (errorHandler.buildDepError "music-pitch-literal"))
          (hsPkgs."music-dynamics-literal" or (errorHandler.buildDepError "music-dynamics-literal"))
          (hsPkgs."prettify" or (errorHandler.buildDepError "prettify"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          ];
        buildable = true;
        };
      };
    }