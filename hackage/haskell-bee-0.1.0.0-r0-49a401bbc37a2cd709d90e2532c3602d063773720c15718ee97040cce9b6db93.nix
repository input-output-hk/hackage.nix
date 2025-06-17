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
      identifier = { name = "haskell-bee"; version = "0.1.0.0"; };
      license = "AGPL-3.0-or-later";
      copyright = "";
      maintainer = "gargantext@iscpif.fr";
      author = "Gargantext";
      homepage = "https://gitlab.iscpif.fr/gargantext/haskell-bee";
      url = "";
      synopsis = "A lightweight library for asynchronous job workers with multiple broker backends";
      description = "Please see the README on GitHub at <https://github.com/garganscript/haskell-bee/blob/master/haskell-bee/README.md>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unbounded-delays" or (errorHandler.buildDepError "unbounded-delays"))
        ];
        buildable = true;
      };
      tests = {
        "test-unit" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."haskell-bee" or (errorHandler.buildDepError "haskell-bee"))
          ];
          buildable = true;
        };
      };
    };
  }