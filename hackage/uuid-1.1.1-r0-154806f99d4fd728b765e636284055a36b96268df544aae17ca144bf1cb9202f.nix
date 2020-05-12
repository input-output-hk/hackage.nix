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
      identifier = { name = "uuid"; version = "1.1.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008 Antoine Latter";
      maintainer = "aslatter@gmail.com";
      author = "Antoine Latter";
      homepage = "http://community.haskell.org/~aslatter/code/uuid/";
      url = "";
      synopsis = "For creating, comparing, parsing and printing Universally Unique Identifiers";
      description = "This library is useful for creating, comparing, parsing and\nprinting Universally Unique Identifiers.\nSee <http://en.wikipedia.org/wiki/UUID> for the general idea.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."Crypto" or (errorHandler.buildDepError "Crypto"))
          (hsPkgs."maccatcher" or (errorHandler.buildDepError "maccatcher"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
        buildable = true;
        };
      };
    }