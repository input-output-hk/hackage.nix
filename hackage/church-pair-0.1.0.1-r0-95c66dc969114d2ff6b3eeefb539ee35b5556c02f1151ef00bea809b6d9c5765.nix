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
      identifier = { name = "church-pair"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mbekkema97@gmail.com";
      author = "Matthew Harm Bekkema";
      homepage = "";
      url = "";
      synopsis = "Church encoded pair";
      description = "This package contains a Church encoded 'Pair' type along with appropriate\ninstances for typeclasses in 'base'.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
          ];
        buildable = true;
        };
      };
    }