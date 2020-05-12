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
      identifier = { name = "matsuri"; version = "0.0.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "newanon@yandex.ru";
      author = "Kagami <newanon@yandex.ru>,\nGrigory Holomiev <omever@gmail.com>,\nMaxim Taldykin <jorpic@gmail.com>";
      homepage = "http://kagami.touhou.ru/projects/show/matsuri";
      url = "";
      synopsis = "";
      description = "ncurses XMPP client. Read README file before use.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "matsuri" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
            (hsPkgs."vty-ui" or (errorHandler.buildDepError "vty-ui"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."ConfigFile" or (errorHandler.buildDepError "ConfigFile"))
            (hsPkgs."XMPP" or (errorHandler.buildDepError "XMPP"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            ];
          buildable = true;
          };
        };
      };
    }