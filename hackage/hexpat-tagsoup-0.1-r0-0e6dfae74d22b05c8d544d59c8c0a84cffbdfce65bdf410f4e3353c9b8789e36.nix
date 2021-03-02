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
      specVersion = "1.0";
      identifier = { name = "hexpat-tagsoup"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2011 by Stephen Blackheath";
      maintainer = "Stephen Blackheath <http://blacksapphire.com/antispam>";
      author = "Stephen Blackheath <http://blacksapphire.com/antispam>";
      homepage = "";
      url = "";
      synopsis = "Parse (possibly malformed) HTML to hexpat tree";
      description = "An integration of the /tagsoup/ and /hexpat/ packages, allowing HTML to be parsed to a\nhexpat tree, tolerant of errors.\n\nThe real work is done by Neil Mitchell's /tagsoup/ package.\n\ndarcs repo: @http://code.haskell.org/hexpat-tagsoup/@";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hexpat" or (errorHandler.buildDepError "hexpat"))
          (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
          ];
        buildable = true;
        };
      };
    }