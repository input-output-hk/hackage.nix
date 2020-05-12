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
      identifier = { name = "pusher-ws"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "mike@barrucadu.co.uk";
      author = "Michael Walker";
      homepage = "https://github.com/barrucadu/pusher-ws";
      url = "";
      synopsis = "Implementation of the Pusher WebSocket protocol";
      description = "An implementation of the Pusher WebSocket (client) protocol in\nHaskell.\n\nCurrent features:\n\n* @ws://@ and @wss://@ protocols.\n* Clusters.\n* Subscribing to channels.\n* Unsubscribing from channels.\n* Authorisation for private and presence channels.\n* Binding event handlers.\n* Unbinding event handlers\n* Sending client events.\n* Threads which automatically get cleaned up on connection close.\n* Automatic reconnection (and channel resubscription).\n* Connection state events.\n* Pusher close codes.\n\nMissing features:\n\n* \"connecting_in\" events.\n\nSee the <https://github.com/barrucadu/pusher-ws README> for more\ndetails.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."lens-aeson" or (errorHandler.buildDepError "lens-aeson"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."websockets" or (errorHandler.buildDepError "websockets"))
          (hsPkgs."wuss" or (errorHandler.buildDepError "wuss"))
          ];
        buildable = true;
        };
      };
    }