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
    flags = {
      threaded = true;
      blaze_html_0_5 = true;
      dev = false;
      library-only = false;
      };
    package = {
      specVersion = "1.8";
      identifier = { name = "hledger-web"; version = "0.19"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Simon Michael <simon@joyful.com>";
      author = "Simon Michael <simon@joyful.com>";
      homepage = "http://hledger.org";
      url = "";
      synopsis = "A web interface for the hledger accounting tool.";
      description = "hledger is a library and set of user tools for working\nwith financial data (or anything that can be tracked in a\ndouble-entry accounting ledger.) It is a haskell port and\nfriendly fork of John Wiegley's Ledger. hledger provides\ncommand-line, curses and web interfaces, and aims to be a\nreliable, practical tool for daily use.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."yesod" or (errorHandler.buildDepError "yesod"))
          (hsPkgs."yesod-core" or (errorHandler.buildDepError "yesod-core"))
          (hsPkgs."yesod-static" or (errorHandler.buildDepError "yesod-static"))
          (hsPkgs."yesod-default" or (errorHandler.buildDepError "yesod-default"))
          (hsPkgs."yesod-form" or (errorHandler.buildDepError "yesod-form"))
          (hsPkgs."clientsession" or (errorHandler.buildDepError "clientsession"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."hamlet" or (errorHandler.buildDepError "hamlet"))
          (hsPkgs."shakespeare-css" or (errorHandler.buildDepError "shakespeare-css"))
          (hsPkgs."shakespeare-js" or (errorHandler.buildDepError "shakespeare-js"))
          (hsPkgs."shakespeare-text" or (errorHandler.buildDepError "shakespeare-text"))
          (hsPkgs."hjsmin" or (errorHandler.buildDepError "hjsmin"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
          (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."hledger" or (errorHandler.buildDepError "hledger"))
          (hsPkgs."hledger-lib" or (errorHandler.buildDepError "hledger-lib"))
          (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          (hsPkgs."io-storage" or (errorHandler.buildDepError "io-storage"))
          (hsPkgs."network-conduit" or (errorHandler.buildDepError "network-conduit"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."regexpr" or (errorHandler.buildDepError "regexpr"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
          (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
          (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
          ] ++ (if flags.blaze_html_0_5
          then [
            (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
            (hsPkgs."blaze-markup" or (errorHandler.buildDepError "blaze-markup"))
            ]
          else [
            (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
            ]);
        buildable = true;
        };
      exes = {
        "hledger-web" = {
          depends = [
            (hsPkgs."hledger-web" or (errorHandler.buildDepError "hledger-web"))
            (hsPkgs."hledger" or (errorHandler.buildDepError "hledger"))
            (hsPkgs."hledger-lib" or (errorHandler.buildDepError "hledger-lib"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."io-storage" or (errorHandler.buildDepError "io-storage"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."regexpr" or (errorHandler.buildDepError "regexpr"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."yesod" or (errorHandler.buildDepError "yesod"))
            (hsPkgs."yesod-core" or (errorHandler.buildDepError "yesod-core"))
            (hsPkgs."yesod-default" or (errorHandler.buildDepError "yesod-default"))
            (hsPkgs."yesod-static" or (errorHandler.buildDepError "yesod-static"))
            (hsPkgs."clientsession" or (errorHandler.buildDepError "clientsession"))
            (hsPkgs."hamlet" or (errorHandler.buildDepError "hamlet"))
            (hsPkgs."network-conduit" or (errorHandler.buildDepError "network-conduit"))
            (hsPkgs."shakespeare-text" or (errorHandler.buildDepError "shakespeare-text"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
            (hsPkgs."hjsmin" or (errorHandler.buildDepError "hjsmin"))
            (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            ] ++ (if flags.blaze_html_0_5
            then [
              (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
              (hsPkgs."blaze-markup" or (errorHandler.buildDepError "blaze-markup"))
              ]
            else [
              (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
              ]);
          buildable = if flags.library-only then false else true;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hledger-web" or (errorHandler.buildDepError "hledger-web"))
            (hsPkgs."yesod-test" or (errorHandler.buildDepError "yesod-test"))
            (hsPkgs."yesod-default" or (errorHandler.buildDepError "yesod-default"))
            (hsPkgs."yesod-core" or (errorHandler.buildDepError "yesod-core"))
            ];
          buildable = true;
          };
        };
      };
    }