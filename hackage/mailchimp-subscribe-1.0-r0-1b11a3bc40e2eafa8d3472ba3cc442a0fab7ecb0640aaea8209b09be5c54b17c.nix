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
      specVersion = "1.20";
      identifier = { name = "mailchimp-subscribe"; version = "1.0"; };
      license = "MIT";
      copyright = "Copyright © 2014 Miëtek Bak";
      maintainer = "Miëtek Bak <hello@mietek.io>";
      author = "Miëtek Bak <hello@mietek.io>";
      homepage = "https://github.com/mietek/mailchimp-subscribe/";
      url = "";
      synopsis = "MailChimp subscription request handler";
      description = "<http://mailchimp.com/ MailChimp> subscription request handler, built with <https://github.com/scotty-web/scotty/ Scotty>.  Intended to support custom signup forms.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "mailchimp-subscribe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."reflection" or (errorHandler.buildDepError "reflection"))
            (hsPkgs."scotty" or (errorHandler.buildDepError "scotty"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
          ];
          buildable = true;
        };
      };
    };
  }