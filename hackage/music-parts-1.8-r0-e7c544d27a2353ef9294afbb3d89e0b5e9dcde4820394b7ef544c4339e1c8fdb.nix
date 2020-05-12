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
      identifier = { name = "music-parts"; version = "1.8"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Hans Hoglund";
      author = "Hans Hoglund";
      homepage = "";
      url = "";
      synopsis = "Musical instruments, parts and playing techniques.";
      description = "Abstract representation of musical parts and instruments.\n\nThis library is part of the Music Suite, see <http://music-suite.github.io>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."adjunctions" or (errorHandler.buildDepError "adjunctions"))
          (hsPkgs."roman-numerals" or (errorHandler.buildDepError "roman-numerals"))
          (hsPkgs."music-pitch" or (errorHandler.buildDepError "music-pitch"))
          (hsPkgs."music-dynamics" or (errorHandler.buildDepError "music-dynamics"))
          ];
        buildable = true;
        };
      };
    }