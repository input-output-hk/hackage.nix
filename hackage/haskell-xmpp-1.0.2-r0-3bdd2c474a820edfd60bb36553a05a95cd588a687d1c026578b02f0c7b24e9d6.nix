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
    flags = { examples = false; debug = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "haskell-xmpp"; version = "1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2005-2011 Dmitry Astapov, k.pierre";
      maintainer = "Dmitry Astapov <dastapov@gmail.com>";
      author = "Dmitry Astapov <dastapov@gmail.com>, pierre <k.pierre.k@gmail.com>";
      homepage = "http://patch-tag.com/r/adept/haskell-xmpp/home";
      url = "";
      synopsis = "Haskell XMPP (eXtensible Message Passing Protocol, a.k.a. Jabber) library";
      description = "Haskell XMPP (eXtensible Message Passing Protocol, a.k.a. Jabber) library\n\nUnlike package network-protocol-xmpp, which uses libxml-sax, this library uses HaXml and supports MUC.\nHowever, MUC support of the moment is worse than that in package XMPP.\n\nThis library make extensive use of STM and threads to simplify writing message-handling code.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."HaXml" or (errorHandler.buildDepError "HaXml"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."html" or (errorHandler.buildDepError "html"))
          (hsPkgs."polyparse" or (errorHandler.buildDepError "polyparse"))
          (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
        ];
        buildable = true;
      };
      exes = {
        "haskell-xmpp-test" = {
          depends = pkgs.lib.optional (flags.examples) (hsPkgs."base" or (errorHandler.buildDepError "base"));
          buildable = if flags.examples then true else false;
        };
      };
    };
  }