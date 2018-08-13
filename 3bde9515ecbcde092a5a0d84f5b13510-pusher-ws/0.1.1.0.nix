{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "pusher-ws";
        version = "0.1.1.0";
      };
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
      "pusher-ws" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.hashable)
          (hsPkgs.http-conduit)
          (hsPkgs.lens)
          (hsPkgs.lens-aeson)
          (hsPkgs.network)
          (hsPkgs.scientific)
          (hsPkgs.stm)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.websockets)
          (hsPkgs.wuss)
        ];
      };
    };
  }