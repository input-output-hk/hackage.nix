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
      identifier = { name = "torrent"; version = "2007.6.24"; };
      license = "BSD-3-Clause";
      copyright = "2005-2007, Lemmih";
      maintainer = "Lemmih (lemmih@gmail.com)";
      author = "Lemmih (lemmih@gmail.com)";
      homepage = "";
      url = "";
      synopsis = "BitTorrent file parser.";
      description = "";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bencode" or (errorHandler.buildDepError "bencode"))
          (hsPkgs."FilePath" or (errorHandler.buildDepError "FilePath"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          ];
        buildable = true;
        };
      };
    }