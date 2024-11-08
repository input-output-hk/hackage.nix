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
      specVersion = "1.12";
      identifier = { name = "telegram-bot-api"; version = "7.4.3"; };
      license = "BSD-3-Clause";
      copyright = "Nickolay Kudasov";
      maintainer = "nickolay.kudasov@gmail.com";
      author = "Nickolay Kudasov";
      homepage = "https://github.com/fizruk/telegram-bot-simple#readme";
      url = "";
      synopsis = "Easy to use library for building Telegram bots. Exports Telegram Bot API.";
      description = "Please see the README on Github at <https://github.com/fizruk/telegram-bot-simple#readme>\n\nFor official Bot API see Telegram Bot API at <https://core.telegram.org/bots/api>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."http-api-data" or (errorHandler.buildDepError "http-api-data"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."servant-client" or (errorHandler.buildDepError "servant-client"))
          (hsPkgs."servant-multipart-api" or (errorHandler.buildDepError "servant-multipart-api"))
          (hsPkgs."servant-multipart-client" or (errorHandler.buildDepError "servant-multipart-client"))
          (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ];
        buildable = true;
      };
    };
  }