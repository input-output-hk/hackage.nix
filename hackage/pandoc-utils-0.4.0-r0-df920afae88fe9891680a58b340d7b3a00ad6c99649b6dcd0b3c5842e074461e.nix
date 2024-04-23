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
      specVersion = "2.0";
      identifier = { name = "pandoc-utils"; version = "0.4.0"; };
      license = "MIT";
      copyright = "Copyright (c) 2020 Krasjet";
      maintainer = "Krasjet";
      author = "Krasjet";
      homepage = "https://github.com/Krasjet/pandoc-utils";
      url = "";
      synopsis = "Utility functions to work with Pandoc in Haskell applications.";
      description = "This package contains some useful functions for writing [Pandoc](https://pandoc.org/)\nfilters and integrating Pandoc into Haskell applications such\nas [Hakyll](https://jaspervdj.be/hakyll/). It provides a\ncomposable wrapper for filters acting on nodes of the [Pandoc\nAST](https://hackage.haskell.org/package/pandoc-types/docs/Text-Pandoc-Definition.html).\n\nFor more examples, please see the [README](https://github.com/Krasjet/pandoc-utils) on GitHub.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "pandoc-utils-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pandoc-utils" or (errorHandler.buildDepError "pandoc-utils"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
            (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hspec" or (errorHandler.buildDepError "tasty-hspec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }