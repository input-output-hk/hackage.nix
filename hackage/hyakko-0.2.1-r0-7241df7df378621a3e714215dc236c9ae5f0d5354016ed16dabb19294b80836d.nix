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
    flags = { threaded = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "hyakko"; version = "0.2.1"; };
      license = "MIT";
      copyright = "(c) 2011 Jeremy Hull";
      maintainer = "Jeremy Hull <sourdrums@gmail.com>";
      author = "Jeremy Hull <sourdrums@gmail.com>";
      homepage = "http://sourrust.github.com/hyakko/";
      url = "";
      synopsis = "Literate-style Documentation Generator";
      description = "Hyakko is a Haskell port of Docco: the original quick-and-dirty,\nhundred-line-long, literate-programming-style documentation\ngenerator.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hyakko" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
            (hsPkgs."regex-pcre" or (errorHandler.buildDepError "regex-pcre"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
            ];
          buildable = true;
          };
        };
      };
    }