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
      identifier = { name = "monad-state"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2010 Byron James Johnson";
      maintainer = "ByronJohnsonFP@gmail.com";
      author = "Byron James Johnson";
      homepage = "";
      url = "";
      synopsis = "Utility library for monads, particularly those involving state";
      description = "Utility library for monads, particularly those involving state";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."fclabels" or (errorHandler.buildDepError "fclabels"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."monads-tf" or (errorHandler.buildDepError "monads-tf"))
          (hsPkgs."AbortT-transformers" or (errorHandler.buildDepError "AbortT-transformers"))
          ];
        buildable = true;
        };
      };
    }