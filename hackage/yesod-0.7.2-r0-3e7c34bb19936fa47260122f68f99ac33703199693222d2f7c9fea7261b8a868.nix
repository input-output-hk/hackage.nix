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
    flags = { ghc7 = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "yesod"; version = "0.7.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://docs.yesodweb.com/";
      url = "";
      synopsis = "Creation of type-safe, RESTful web applications.";
      description = "Yesod is a framework designed to foster creation of RESTful web application that have strong compile-time guarantees of correctness. It also affords space efficient code and portability to many deployment backends, from CGI to stand-alone serving.\n\nThe Yesod documentation site <http://docs.yesodweb.com/> has much more information, tutorials and information on some of the supporting packages, like Hamlet and web-routes-quasi.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."yesod-core" or (errorHandler.buildDepError "yesod-core"))
          (hsPkgs."yesod-auth" or (errorHandler.buildDepError "yesod-auth"))
          (hsPkgs."yesod-json" or (errorHandler.buildDepError "yesod-json"))
          (hsPkgs."yesod-persistent" or (errorHandler.buildDepError "yesod-persistent"))
          (hsPkgs."yesod-static" or (errorHandler.buildDepError "yesod-static"))
          (hsPkgs."yesod-form" or (errorHandler.buildDepError "yesod-form"))
          (hsPkgs."monad-peel" or (errorHandler.buildDepError "monad-peel"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
          (hsPkgs."hamlet" or (errorHandler.buildDepError "hamlet"))
          (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
          (hsPkgs."mime-mail" or (errorHandler.buildDepError "mime-mail"))
          (hsPkgs."hjsmin" or (errorHandler.buildDepError "hjsmin"))
          ] ++ [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      exes = {
        "yesod" = {
          depends = [
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ] ++ [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
          };
        };
      };
    }