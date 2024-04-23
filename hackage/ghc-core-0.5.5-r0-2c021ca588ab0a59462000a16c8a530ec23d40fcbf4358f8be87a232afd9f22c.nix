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
      specVersion = "1.2";
      identifier = { name = "ghc-core"; version = "0.5.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "shachaf@gmail.com";
      author = "Don Stewart";
      homepage = "https://github.com/shachaf/ghc-core";
      url = "";
      synopsis = "Display GHC's core and assembly output in a pager";
      description = "A convenient command line wrapper for GHC that displays\nGHC's optimised core and assembly output in a human\nreadable, colourised manner, in a pager. Unix systems\nonly, currently.\n\nUsage:\n\n> ghc-core A.hs\n\n> ghc-core -fvia-C -optc-O3 A.hs\n";
      buildType = "Simple";
    };
    components = {
      exes = {
        "ghc-core" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."pcre-light" or (errorHandler.buildDepError "pcre-light"))
            (hsPkgs."colorize-haskell" or (errorHandler.buildDepError "colorize-haskell"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
          buildable = true;
        };
      };
    };
  }