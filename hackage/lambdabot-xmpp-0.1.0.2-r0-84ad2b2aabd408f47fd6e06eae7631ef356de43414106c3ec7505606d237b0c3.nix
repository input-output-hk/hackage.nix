let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "lambdabot-xmpp"; version = "0.1.0.2"; };
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
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."pontarius-xmpp" or (buildDepError "pontarius-xmpp"))
            (hsPkgs."lambdabot-core" or (buildDepError "lambdabot-core"))
            (hsPkgs."lambdabot-haskell-plugins" or (buildDepError "lambdabot-haskell-plugins"))
            (hsPkgs."lambdabot-irc-plugins" or (buildDepError "lambdabot-irc-plugins"))
            (hsPkgs."lambdabot-misc-plugins" or (buildDepError "lambdabot-misc-plugins"))
            (hsPkgs."lambdabot-novelty-plugins" or (buildDepError "lambdabot-novelty-plugins"))
            (hsPkgs."lambdabot-reference-plugins" or (buildDepError "lambdabot-reference-plugins"))
            (hsPkgs."lambdabot-social-plugins" or (buildDepError "lambdabot-social-plugins"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."lifted-base" or (buildDepError "lifted-base"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."tls" or (buildDepError "tls"))
            (hsPkgs."x509-validation" or (buildDepError "x509-validation"))
            (hsPkgs."xml-types" or (buildDepError "xml-types"))
            ];
          };
        };
      };
    }