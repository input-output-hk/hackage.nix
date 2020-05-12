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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."music-score" or (errorHandler.buildDepError "music-score"))
          (hsPkgs."musicxml2" or (errorHandler.buildDepError "musicxml2"))
          (hsPkgs."vector-space" or (errorHandler.buildDepError "vector-space"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."music-pitch" or (errorHandler.buildDepError "music-pitch"))
          (hsPkgs."music-pitch-literal" or (errorHandler.buildDepError "music-pitch-literal"))
          (hsPkgs."music-dynamics" or (errorHandler.buildDepError "music-dynamics"))
          (hsPkgs."music-dynamics-literal" or (errorHandler.buildDepError "music-dynamics-literal"))
          ];
        buildable = true;
        };
      };
    }