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
      identifier = { name = "htags"; version = "1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008 by David Sankel";
      maintainer = "david@sankelsoftware.com";
      author = "David Sankel";
      homepage = "";
      url = "";
      synopsis = "A Haskell98 parsing tags program similar to ctags.";
      description = "htags is a tag file generator to enable extra functionality in editors like\nvim. It expands upon 'hasktags' by using a full Haskell 98 parser and options\nfor recursion.\n\n&#169; 2008 by David Sankel; BSD3 license.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "htags" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."haskell-src" or (errorHandler.buildDepError "haskell-src"))
          ];
          buildable = true;
        };
      };
    };
  }