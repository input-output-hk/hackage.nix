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
      identifier = { name = "heckle"; version = "0.1.0.0"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "2016rshah@gmail.com";
      author = "Rushi Shah";
      homepage = "";
      url = "";
      synopsis = "Jekyll in Haskell";
      description = "Lightweight static site compiler for markdown posts";
      buildType = "Simple";
      };
    components = {
      exes = {
        "heckle" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
            (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
            ];
          buildable = true;
          };
        };
      };
    }