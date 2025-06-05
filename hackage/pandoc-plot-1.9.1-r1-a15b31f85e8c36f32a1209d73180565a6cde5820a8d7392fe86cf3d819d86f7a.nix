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
      specVersion = "2.2";
      identifier = { name = "pandoc-plot"; version = "1.9.1"; };
      license = "GPL-2.0-or-later";
      copyright = "(c) 2019-present Laurent P. René de Cotret";
      maintainer = "Laurent P. René de Cotret";
      author = "Laurent P. René de Cotret";
      homepage = "https://github.com/LaurentRDC/pandoc-plot#readme";
      url = "";
      synopsis = "A Pandoc filter to include figures generated from code blocks using your plotting toolkit of choice.";
      description = "A Pandoc filter to include figures generated from code blocks.\nKeep the document and code in the same location. Output is\ncaptured and included as a figure.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
          (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
          (hsPkgs."lifted-async" or (errorHandler.buildDepError "lifted-async"))
          (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
          (hsPkgs."shakespeare" or (errorHandler.buildDepError "shakespeare"))
          (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."typed-process" or (errorHandler.buildDepError "typed-process"))
          (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        buildable = true;
      };
      exes = {
        "pandoc-plot" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."gitrev" or (errorHandler.buildDepError "gitrev"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
            (hsPkgs."pandoc-plot" or (errorHandler.buildDepError "pandoc-plot"))
            (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."typed-process" or (errorHandler.buildDepError "typed-process"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hspec-expectations" or (errorHandler.buildDepError "hspec-expectations"))
            (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
            (hsPkgs."pandoc-plot" or (errorHandler.buildDepError "pandoc-plot"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-hspec" or (errorHandler.buildDepError "tasty-hspec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }