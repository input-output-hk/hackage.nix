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
      identifier = { name = "yesod"; version = "1.2.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://www.yesodweb.com/";
      url = "";
      synopsis = "Creation of type-safe, RESTful web applications.";
      description = "A RESTful web framework with strong compile-time guarantees of correctness. It also affords space efficient code, highly concurrent loads, and portability to many deployment backends (via the wai package), from CGI to stand-alone serving.\n\nYesod also focuses on developer productivity. Yesod integrates well with tools for all your basic web development (wai, persistent, and shakespeare/hamlet)\n\nThe Yesod documentation site <http://www.yesodweb.com/> has much more information, including on the supporting packages mentioned above.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."yesod-core" or (errorHandler.buildDepError "yesod-core"))
          (hsPkgs."yesod-auth" or (errorHandler.buildDepError "yesod-auth"))
          (hsPkgs."yesod-persistent" or (errorHandler.buildDepError "yesod-persistent"))
          (hsPkgs."yesod-form" or (errorHandler.buildDepError "yesod-form"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
          (hsPkgs."hamlet" or (errorHandler.buildDepError "hamlet"))
          (hsPkgs."shakespeare-js" or (errorHandler.buildDepError "shakespeare-js"))
          (hsPkgs."shakespeare-css" or (errorHandler.buildDepError "shakespeare-css"))
          (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
          (hsPkgs."blaze-markup" or (errorHandler.buildDepError "blaze-markup"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."network-conduit" or (errorHandler.buildDepError "network-conduit"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or (errorHandler.buildDepError "unix"));
        buildable = true;
        };
      };
    }