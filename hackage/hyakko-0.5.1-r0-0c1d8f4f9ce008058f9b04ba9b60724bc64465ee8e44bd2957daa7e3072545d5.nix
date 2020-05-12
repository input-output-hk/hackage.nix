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
      identifier = { name = "hyakko"; version = "0.5.1"; };
      license = "MIT";
      copyright = "(c) 2013 Jeremy Hull";
      maintainer = "Jeremy Hull <sourdrums@gmail.com>";
      author = "Jeremy Hull <sourdrums@gmail.com>";
      homepage = "http://sourrust.github.io/hyakko/";
      url = "";
      synopsis = "Literate-style Documentation Generator";
      description = "Hyakko is a Haskell port of Docco: the original\nquick-and-dirty, hundred-line-long,\nliterate-programming-style documentation generator.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hyakko" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."regex-pcre" or (errorHandler.buildDepError "regex-pcre"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."highlighting-kate" or (errorHandler.buildDepError "highlighting-kate"))
            (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
            ];
          buildable = true;
          };
        };
      };
    }