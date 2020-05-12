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
      specVersion = "1.18";
      identifier = { name = "data-easy"; version = "0.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jmacristovao@gmail.com";
      author = "João Cristóvão";
      homepage = "https://github.com/jcristovao/easy-data";
      url = "";
      synopsis = "Consistent set of utility functions for Maybe, Either, List, Monoids.";
      description = "Easy to use set of utility functions, implementing a Data.Maybe like\ninterface for other common types, like Either, List, Bool, Tuple,\nor even member of the Monoid type class.\nAlso features a set of conversion functions among them,\nusing sensible defaults.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."either" or (errorHandler.buildDepError "either"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."either" or (errorHandler.buildDepError "either"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."errors" or (errorHandler.buildDepError "errors"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
            (hsPkgs."hlint" or (errorHandler.buildDepError "hlint"))
            ];
          buildable = true;
          };
        };
      };
    }