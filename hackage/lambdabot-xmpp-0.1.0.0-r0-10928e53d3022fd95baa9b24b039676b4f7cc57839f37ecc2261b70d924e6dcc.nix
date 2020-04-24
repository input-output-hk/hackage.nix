{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "lambdabot-xmpp"; version = "0.1.0.0"; };
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
        "lambdabot" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."pontarius-xmpp" or ((hsPkgs.pkgs-errors).buildDepError "pontarius-xmpp"))
            (hsPkgs."lambdabot-core" or ((hsPkgs.pkgs-errors).buildDepError "lambdabot-core"))
            (hsPkgs."lambdabot-haskell-plugins" or ((hsPkgs.pkgs-errors).buildDepError "lambdabot-haskell-plugins"))
            (hsPkgs."lambdabot-irc-plugins" or ((hsPkgs.pkgs-errors).buildDepError "lambdabot-irc-plugins"))
            (hsPkgs."lambdabot-misc-plugins" or ((hsPkgs.pkgs-errors).buildDepError "lambdabot-misc-plugins"))
            (hsPkgs."lambdabot-novelty-plugins" or ((hsPkgs.pkgs-errors).buildDepError "lambdabot-novelty-plugins"))
            (hsPkgs."lambdabot-reference-plugins" or ((hsPkgs.pkgs-errors).buildDepError "lambdabot-reference-plugins"))
            (hsPkgs."lambdabot-social-plugins" or ((hsPkgs.pkgs-errors).buildDepError "lambdabot-social-plugins"))
            (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
            (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
            (hsPkgs."lifted-base" or ((hsPkgs.pkgs-errors).buildDepError "lifted-base"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."tls" or ((hsPkgs.pkgs-errors).buildDepError "tls"))
            (hsPkgs."x509-validation" or ((hsPkgs.pkgs-errors).buildDepError "x509-validation"))
            (hsPkgs."xml-types" or ((hsPkgs.pkgs-errors).buildDepError "xml-types"))
            ];
          buildable = true;
          };
        };
      };
    }