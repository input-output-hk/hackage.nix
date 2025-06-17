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
      specVersion = "3.4";
      identifier = { name = "haskell-bee-tests"; version = "0.1.0.0"; };
      license = "AGPL-3.0-or-later";
      copyright = "";
      maintainer = "gargantext@iscpif.fr";
      author = "Gargantext";
      homepage = "https://gitlab.iscpif.fr/gargantext/haskell-bee";
      url = "";
      synopsis = "Reusable test suite for any haskell-bee Broker implementation";
      description = "Please see the README on GitHub at <https://github.com/garganscript/haskell-bee/blob/master/haskell-bee/README.md>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."hedis" or (errorHandler.buildDepError "hedis"))
          (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          (hsPkgs."postgresql-simple" or (errorHandler.buildDepError "postgresql-simple"))
          (hsPkgs."random-strings" or (errorHandler.buildDepError "random-strings"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          (hsPkgs."tasty-hspec" or (errorHandler.buildDepError "tasty-hspec"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."haskell-bee" or (errorHandler.buildDepError "haskell-bee"))
        ];
        buildable = true;
      };
    };
  }