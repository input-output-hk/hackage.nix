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
      specVersion = "2.0";
      identifier = { name = "haskell-xmpp"; version = "2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2005-2011 Dmitry Astapov, k.pierre";
      maintainer = "riskbook <support@riskbook.com>";
      author = "Dmitry Astapov <dastapov@gmail.com>, pierre <k.pierre.k@gmail.com>, riskbook <support@riskbook.com>";
      homepage = "https://github.com/riskbook/haskell-xmpp";
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
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."HaXml" or (errorHandler.buildDepError "HaXml"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."network-bsd" or (errorHandler.buildDepError "network-bsd"))
          (hsPkgs."html" or (errorHandler.buildDepError "html"))
          (hsPkgs."polyparse" or (errorHandler.buildDepError "polyparse"))
          (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
          (hsPkgs."xml-hamlet" or (errorHandler.buildDepError "xml-hamlet"))
          (hsPkgs."xml-conduit" or (errorHandler.buildDepError "xml-conduit"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."blaze-markup" or (errorHandler.buildDepError "blaze-markup"))
          (hsPkgs."singlethongs" or (errorHandler.buildDepError "singlethongs"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
        ];
        buildable = true;
      };
      exes = {
        "haskell-xmpp-test" = {
          depends = pkgs.lib.optional (flags.examples) (hsPkgs."base" or (errorHandler.buildDepError "base"));
          buildable = if flags.examples then true else false;
        };
        "haskell-xmpp-io-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."haskell-xmpp" or (errorHandler.buildDepError "haskell-xmpp"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.hspec-discover.components.exes.hspec-discover or (pkgs.pkgsBuildBuild.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ];
          buildable = true;
        };
      };
    };
  }