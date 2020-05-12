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
      specVersion = "0";
      identifier = { name = "adhoc-network"; version = "1.0.3"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "";
      author = "Stephan Friedrichs,\nHenning Günther,\nOliver Mielentz,\nMartin Wegner";
      homepage = "http://sep07.mroot.net/";
      url = "";
      synopsis = "Ad-hoc P2P network protocol";
      description = "This is a library for ad hoc P2p networking, developed for the Barracuda\nchat client (by Stephan Friedrichs,\nHenning Günther, Oliver Mielentz and Martin Wegner).\n\nThis library implements the RFCs (see for example\n<http://tools.ietf.org/html/draft-strauss-p2p-chat>).\n\nThe Darcs repository can be found at <http://repos.mroot.net/sep07-adhoc>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."HaXml" or (errorHandler.buildDepError "HaXml"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."dataenc" or (errorHandler.buildDepError "dataenc"))
          (hsPkgs."Crypto" or (errorHandler.buildDepError "Crypto"))
          (hsPkgs."hsgnutls" or (errorHandler.buildDepError "hsgnutls"))
          (hsPkgs."pkcs1" or (errorHandler.buildDepError "pkcs1"))
          (hsPkgs."xml-parsec" or (errorHandler.buildDepError "xml-parsec"))
          ];
        buildable = true;
        };
      };
    }