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
      specVersion = "1.24";
      identifier = { name = "symantic-lib"; version = "0.0.4.20180831"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Julien Moutinho <julm+symantic@autogeree.net>";
      author = "Julien Moutinho <julm+symantic@autogeree.net>";
      homepage = "";
      url = "";
      synopsis = "Symantics for common types.";
      description = "Symantics for common types,\nusing <https://hackage.haskell.org/package/symantic symantic>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."symantic" or (errorHandler.buildDepError "symantic"))
          (hsPkgs."symantic-grammar" or (errorHandler.buildDepError "symantic-grammar"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mono-traversable" or (errorHandler.buildDepError "mono-traversable"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "symantic-test" = {
          depends = [
            (hsPkgs."symantic" or (errorHandler.buildDepError "symantic"))
            (hsPkgs."symantic-grammar" or (errorHandler.buildDepError "symantic-grammar"))
            (hsPkgs."symantic-lib" or (errorHandler.buildDepError "symantic-lib"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."monad-classes" or (errorHandler.buildDepError "monad-classes"))
            (hsPkgs."mono-traversable" or (errorHandler.buildDepError "mono-traversable"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-golden" or (errorHandler.buildDepError "tasty-golden"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }