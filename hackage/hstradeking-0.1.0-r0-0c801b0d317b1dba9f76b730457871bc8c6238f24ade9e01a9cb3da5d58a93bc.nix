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
      specVersion = "1.8";
      identifier = { name = "hstradeking"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Travis Athougies <travis@athougies.net>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Tradeking API bindings for Haskell";
      description = "This is a Haskell binding for the TradeKing developers API (https://developers.tradeking.com/).\n\nIt currently supports retrieving quotes and stock information, as well as the quote and trade\nstreaming API.\n\nSupport for the other TradeKing API endpoints is forthcoming.\n\nTo use, install the package via cabal. This will create an executable called `tradeking`. To\nconnect to the TradeKing API, you will need to create a new personal application from the\nTradeKing developers site. This should give you four strings: an OAuth consumer key, an OAuth\nconsumer secret, an OAuth Token, and an OAuth Token Secret. You supply these into the\n`tradeking` application using a configuration file (either `\$(HOME)/.tradeking` or\n`/etc/tradeking.conf`). This configuration file should look like:\n\n> consumer-key = <tradeking consumer key>\n> consumer-secret = <tradeking consumer secret>\n> oauth-token = <tradeking oauth token>\n> oauth-token-secret = <tradeking oauth token secret>\n\nNow you can run `tradeking quote SPY` to have it return the current quote for the S&P 500\nETF. `tradeking info MSFT` will provide information on Microsoft, and `tradeking stream MSFT`\nwill provide a live stream of `MSFT` quotes. All commands accept more than one stock, so\n`tradeking quote MSFT AAPL`, `tradeking info MSFT SPY`, and `tradeking stream SPY AAPL` work as\nexpected (subject to TradeKing) limits.\n\nYou can also request quotes programmatically, using the API described here.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."hoauth" or (buildDepError "hoauth"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."old-locale" or (buildDepError "old-locale"))
          (hsPkgs."safe" or (buildDepError "safe"))
          (hsPkgs."conduit" or (buildDepError "conduit"))
          (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
          (hsPkgs."resourcet" or (buildDepError "resourcet"))
          (hsPkgs."RSA" or (buildDepError "RSA"))
          (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
          (hsPkgs."lifted-base" or (buildDepError "lifted-base"))
          (hsPkgs."configurator" or (buildDepError "configurator"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."numbers" or (buildDepError "numbers"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          ];
        };
      exes = {
        "tradeking" = {
          depends = [
            (hsPkgs."hstradeking" or (buildDepError "hstradeking"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          };
        };
      };
    }