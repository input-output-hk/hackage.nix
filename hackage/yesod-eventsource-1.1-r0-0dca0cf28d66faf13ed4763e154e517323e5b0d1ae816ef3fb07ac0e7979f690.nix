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
      identifier = { name = "yesod-eventsource"; version = "1.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Felipe Lessa <felipe.lessa@gmail.com>";
      author = "Felipe Lessa <felipe.lessa@gmail.com>";
      homepage = "http://www.yesodweb.com/";
      url = "";
      synopsis = "Server-sent events support for Yesod apps.";
      description = "It's easy to send an event from an HTTP client to a server:\njust send an HTTP request.  However, sending events from the\nserver to the client requires more sophisticated approaches.\nServer-sent events (<http://www.w3.org/TR/eventsource/>) are a\nstandardized way of pushing events from the server to the\nclient.\n\nThis package allows your Yesod application to easily send\nserver-sent events.  On the client side, you may use the\n@EventSource@ JavaScript object on browsers that support it\n(<https://developer.mozilla.org/en-US/docs/Server-sent_events/EventSource>)\nor a polyfill for browsers that don't (we support Remy's\npolyfill out-of-the-box, although that requires you to\nexplicitly support it).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."yesod-core" or (errorHandler.buildDepError "yesod-core"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."wai-eventsource" or (errorHandler.buildDepError "wai-eventsource"))
          (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }