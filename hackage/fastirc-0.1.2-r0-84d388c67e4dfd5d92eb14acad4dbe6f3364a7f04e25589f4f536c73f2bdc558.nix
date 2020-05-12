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
      identifier = { name = "fastirc"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2010 Ertugrul Söylemez";
      maintainer = "Ertugrul Söylemez <es@ertes.de>";
      author = "Ertugrul Söylemez <es@ertes.de>";
      homepage = "";
      url = "http://code.haskell.org/fastirc/";
      synopsis = "Fast Internet Relay Chat (IRC) library";
      description = "Fast Internet Relay Chat (IRC) library.  This library implements a\nattoparsec-based fast parser for IRC messages as well as a (currently\nyet nonexistent) network manager for servers and clients.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."bytestring-show" or (errorHandler.buildDepError "bytestring-show"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."monadLib" or (errorHandler.buildDepError "monadLib"))
          ];
        buildable = true;
        };
      };
    }