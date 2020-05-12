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
      identifier = { name = "XMPP"; version = "0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "newanon@yandex.ru";
      author = "Magnus Henoch, Kagami <newanon@yandex.ru>";
      homepage = "http://www.dtek.chalmers.se/~henoch/text/hsxmpp.html";
      url = "";
      synopsis = "XMPP library";
      description = "XMPP library";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      };
    }