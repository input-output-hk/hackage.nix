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
      identifier = { name = "hxmppc"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nicolas.pouillard@gmail.com";
      author = "Nicolas Pouillard";
      homepage = "";
      url = "";
      synopsis = "Haskell XMPP (Jabber Client) Command Line Interface (CLI)";
      description = "A simple command line interface to send and receive\nmessages via XMPP";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hxmppc" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."xml-types" or (errorHandler.buildDepError "xml-types"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."network-protocol-xmpp" or (errorHandler.buildDepError "network-protocol-xmpp"))
            (hsPkgs."fclabels" or (errorHandler.buildDepError "fclabels"))
            ];
          buildable = true;
          };
        };
      };
    }