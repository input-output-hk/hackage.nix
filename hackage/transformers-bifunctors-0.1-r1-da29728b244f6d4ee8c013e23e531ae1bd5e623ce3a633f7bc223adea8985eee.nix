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
      specVersion = "1.8";
      identifier = { name = "transformers-bifunctors"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jacob Stanley <jacob@stanley.io>";
      author = "Jacob Stanley";
      homepage = "https://github.com/jacobstanley/transformers-bifunctors";
      url = "";
      synopsis = "Bifunctors over monad transformers.";
      description = "Bifunctors over monad transformers.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mmorph" or (errorHandler.buildDepError "mmorph"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }