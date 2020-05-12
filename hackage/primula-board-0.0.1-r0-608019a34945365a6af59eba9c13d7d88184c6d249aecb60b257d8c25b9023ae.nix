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
      identifier = { name = "primula-board"; version = "0.0.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "newanon@yandex.ru";
      author = "Kagami <newanon@yandex.ru>";
      homepage = "http://kagami.touhou.ru/projects/show/primula";
      url = "";
      synopsis = "ImageBoard on Happstack and HSP";
      description = "Simple ImageBoard like wakaba on Happstack and HSP.\nMessages on board sended via jabber-bot\n(primula-bot package). Settings stored in\n~/.primularc file.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "primula-board" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."happstack-helpers" or (errorHandler.buildDepError "happstack-helpers"))
            (hsPkgs."happstack-server" or (errorHandler.buildDepError "happstack-server"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."happstack" or (errorHandler.buildDepError "happstack"))
            (hsPkgs."hsp" or (errorHandler.buildDepError "hsp"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."ConfigFile" or (errorHandler.buildDepError "ConfigFile"))
            (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
            (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
            (hsPkgs."happstack-state" or (errorHandler.buildDepError "happstack-state"))
            ];
          buildable = true;
          };
        };
      };
    }