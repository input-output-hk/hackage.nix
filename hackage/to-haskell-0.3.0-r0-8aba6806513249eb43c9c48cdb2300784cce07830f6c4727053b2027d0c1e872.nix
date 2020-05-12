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
      specVersion = "1.6";
      identifier = { name = "to-haskell"; version = "0.3.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2012 by Conal Elliott";
      maintainer = "conal@conal.net";
      author = "Conal Elliott";
      homepage = "https://github.com/conal/to-haskell";
      url = "";
      synopsis = "A type class and some utilities for generating Haskell code.";
      description = "A type class and some utilities for generating Haskell code.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
          ];
        buildable = true;
        };
      };
    }