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
      specVersion = "1.8";
      identifier = { name = "wsedit"; version = "0.1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "(c) 2012 Linus Lüssing";
      maintainer = "Linus Lüssing <linus.luessing@web.de>";
      author = "Linus Lüssing";
      homepage = "";
      url = "";
      synopsis = "A small tool to list, add and remove webseeds from a torrent file";
      description = "This package provides a program to modify BEP-19 webseeds (GetRight style) of\na torrent file.\n\nCurrently it allows to:\n\n* list all webseeds (@--list-webseeds@)\n\n* append a webseed (@--add-webseed \\<url\\>@)\n\n* remove a webseed (@--remove-webseed \\<n\\>@)\n\n* remove all webseeds (@--remove-all-webseeds@)\n\nAlso see:\n\n@wsedit --help@";
      buildType = "Simple";
    };
    components = {
      exes = {
        "wsedit" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."bencode" or (errorHandler.buildDepError "bencode"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          ];
          buildable = true;
        };
      };
    };
  }