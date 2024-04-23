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
      identifier = { name = "Ranka"; version = "0.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "newanon@yandex.ru";
      author = "Kagami <newanon@yandex.ru>";
      homepage = "http://kagami.touhou.ru/projects/show/ranka";
      url = "";
      synopsis = "HTTP to XMPP omegle chats gate.";
      description = "HTTP to XMPP omegle chats gate. Simple example of\nNetwork.XMPP library usage.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "Ranka" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."XMPP" or (errorHandler.buildDepError "XMPP"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."json" or (errorHandler.buildDepError "json"))
            (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
          ];
          buildable = true;
        };
      };
    };
  }