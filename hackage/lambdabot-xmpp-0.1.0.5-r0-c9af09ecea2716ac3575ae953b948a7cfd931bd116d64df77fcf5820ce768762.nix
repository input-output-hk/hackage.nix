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
      identifier = { name = "lambdabot-xmpp"; version = "0.1.0.5"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "zl29ah@gmail.com";
      author = "Adam Flott, Sergey Alirzaev";
      homepage = "";
      url = "";
      synopsis = "Lambdabot plugin for XMPP (Jabber) protocol";
      description = "Usage: cabal build && .\\/dist\\/build\\/lambdabot\\/lambdabot -e 'xmpp-connect asdfasdf example.com 5222 username nick password haskell@conference.example.com'";
      buildType = "Simple";
      };
    components = {
      exes = {
        "lambdabot-xmpp" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pontarius-xmpp" or (errorHandler.buildDepError "pontarius-xmpp"))
            (hsPkgs."lambdabot-core" or (errorHandler.buildDepError "lambdabot-core"))
            (hsPkgs."lambdabot-haskell-plugins" or (errorHandler.buildDepError "lambdabot-haskell-plugins"))
            (hsPkgs."lambdabot-irc-plugins" or (errorHandler.buildDepError "lambdabot-irc-plugins"))
            (hsPkgs."lambdabot-misc-plugins" or (errorHandler.buildDepError "lambdabot-misc-plugins"))
            (hsPkgs."lambdabot-novelty-plugins" or (errorHandler.buildDepError "lambdabot-novelty-plugins"))
            (hsPkgs."lambdabot-reference-plugins" or (errorHandler.buildDepError "lambdabot-reference-plugins"))
            (hsPkgs."lambdabot-social-plugins" or (errorHandler.buildDepError "lambdabot-social-plugins"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."tls" or (errorHandler.buildDepError "tls"))
            (hsPkgs."x509-validation" or (errorHandler.buildDepError "x509-validation"))
            (hsPkgs."xml-types" or (errorHandler.buildDepError "xml-types"))
            ];
          buildable = true;
          };
        };
      };
    }