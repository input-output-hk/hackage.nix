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
      specVersion = "1.10";
      identifier = { name = "irc-conduit"; version = "0.3.0.5"; };
      license = "MIT";
      copyright = "";
      maintainer = "mike@barrucadu.co.uk";
      author = "Michael Walker";
      homepage = "https://github.com/barrucadu/irc-conduit";
      url = "";
      synopsis = "Streaming IRC message library using conduits.";
      description = "IRC messages consist of an optional identifying prefix, a command\nname, and a list of arguments. The <http://hackage.haskell.org/package/irc irc>\npackage provides a low-level decoding and encoding scheme for\nmessages in terms of ByteStrings, but using this relies on matching\nnames of commands as strings, and unpacking this decoded structure\nyourself. This package takes it a little further, providing an ADT\nfor IRC messages and sources, and conduits which attempt to decode\nand encode messages appropriately.\n\nIn addition to providing conduits for automatically handling\nstreaming messages, there are also helper functions for connecting\nto an IRC server and hooking up conduits to the socket.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."conduit-extra" or (errorHandler.buildDepError "conduit-extra"))
          (hsPkgs."connection" or (errorHandler.buildDepError "connection"))
          (hsPkgs."irc" or (errorHandler.buildDepError "irc"))
          (hsPkgs."irc-ctcp" or (errorHandler.buildDepError "irc-ctcp"))
          (hsPkgs."network-conduit-tls" or (errorHandler.buildDepError "network-conduit-tls"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."tls" or (errorHandler.buildDepError "tls"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."x509-validation" or (errorHandler.buildDepError "x509-validation"))
        ];
        buildable = true;
      };
    };
  }