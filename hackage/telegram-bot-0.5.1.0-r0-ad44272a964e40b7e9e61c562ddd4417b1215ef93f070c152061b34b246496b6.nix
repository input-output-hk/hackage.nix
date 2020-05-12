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
      identifier = { name = "telegram-bot"; version = "0.5.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Alexander Krupenkin";
      maintainer = "mail@akru.me";
      author = "Alexander Krupenkin";
      homepage = "https://github.com/akru/telegram-bot#readme";
      url = "";
      synopsis = "Telegram Bot microframework for Haskell";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."telegram-api" or (errorHandler.buildDepError "telegram-api"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "hello-bot" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."telegram-bot" or (errorHandler.buildDepError "telegram-bot"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      tests = {
        "telegram-bot-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."telegram-bot" or (errorHandler.buildDepError "telegram-bot"))
            ];
          buildable = true;
          };
        };
      };
    }