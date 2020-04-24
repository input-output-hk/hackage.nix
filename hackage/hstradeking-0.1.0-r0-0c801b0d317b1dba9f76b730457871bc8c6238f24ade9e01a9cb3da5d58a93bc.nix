{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."hoauth" or ((hsPkgs.pkgs-errors).buildDepError "hoauth"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
          (hsPkgs."safe" or ((hsPkgs.pkgs-errors).buildDepError "safe"))
          (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
          (hsPkgs."http-conduit" or ((hsPkgs.pkgs-errors).buildDepError "http-conduit"))
          (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
          (hsPkgs."RSA" or ((hsPkgs.pkgs-errors).buildDepError "RSA"))
          (hsPkgs."case-insensitive" or ((hsPkgs.pkgs-errors).buildDepError "case-insensitive"))
          (hsPkgs."lifted-base" or ((hsPkgs.pkgs-errors).buildDepError "lifted-base"))
          (hsPkgs."configurator" or ((hsPkgs.pkgs-errors).buildDepError "configurator"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."numbers" or ((hsPkgs.pkgs-errors).buildDepError "numbers"))
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          ];
        buildable = true;
        };
      exes = {
        "tradeking" = {
          depends = [
            (hsPkgs."hstradeking" or ((hsPkgs.pkgs-errors).buildDepError "hstradeking"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }