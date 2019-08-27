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
    flags = {
      threaded = true;
      blaze_html_0_5 = true;
      dev = false;
      library-only = false;
      };
    package = {
      specVersion = "1.8";
      identifier = { name = "hledger-web"; version = "0.19.1"; };
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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."yesod" or (buildDepError "yesod"))
          (hsPkgs."yesod-core" or (buildDepError "yesod-core"))
          (hsPkgs."yesod-static" or (buildDepError "yesod-static"))
          (hsPkgs."yesod-default" or (buildDepError "yesod-default"))
          (hsPkgs."yesod-form" or (buildDepError "yesod-form"))
          (hsPkgs."clientsession" or (buildDepError "clientsession"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."hamlet" or (buildDepError "hamlet"))
          (hsPkgs."shakespeare-css" or (buildDepError "shakespeare-css"))
          (hsPkgs."shakespeare-js" or (buildDepError "shakespeare-js"))
          (hsPkgs."shakespeare-text" or (buildDepError "shakespeare-text"))
          (hsPkgs."hjsmin" or (buildDepError "hjsmin"))
          (hsPkgs."monad-control" or (buildDepError "monad-control"))
          (hsPkgs."wai-extra" or (buildDepError "wai-extra"))
          (hsPkgs."yaml" or (buildDepError "yaml"))
          (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."warp" or (buildDepError "warp"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."hledger" or (buildDepError "hledger"))
          (hsPkgs."hledger-lib" or (buildDepError "hledger-lib"))
          (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."HUnit" or (buildDepError "HUnit"))
          (hsPkgs."io-storage" or (buildDepError "io-storage"))
          (hsPkgs."network-conduit" or (buildDepError "network-conduit"))
          (hsPkgs."old-locale" or (buildDepError "old-locale"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."regexpr" or (buildDepError "regexpr"))
          (hsPkgs."safe" or (buildDepError "safe"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."wai" or (buildDepError "wai"))
          (hsPkgs."wai-extra" or (buildDepError "wai-extra"))
          (hsPkgs."warp" or (buildDepError "warp"))
          (hsPkgs."yaml" or (buildDepError "yaml"))
          ] ++ (if flags.blaze_html_0_5
          then [
            (hsPkgs."blaze-html" or (buildDepError "blaze-html"))
            (hsPkgs."blaze-markup" or (buildDepError "blaze-markup"))
            ]
          else [ (hsPkgs."blaze-html" or (buildDepError "blaze-html")) ]);
        };
      exes = {
        "hledger-web" = {
          depends = [
            (hsPkgs."hledger-web" or (buildDepError "hledger-web"))
            (hsPkgs."hledger" or (buildDepError "hledger"))
            (hsPkgs."hledger-lib" or (buildDepError "hledger-lib"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."io-storage" or (buildDepError "io-storage"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."regexpr" or (buildDepError "regexpr"))
            (hsPkgs."safe" or (buildDepError "safe"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."yesod" or (buildDepError "yesod"))
            (hsPkgs."yesod-core" or (buildDepError "yesod-core"))
            (hsPkgs."yesod-default" or (buildDepError "yesod-default"))
            (hsPkgs."yesod-static" or (buildDepError "yesod-static"))
            (hsPkgs."clientsession" or (buildDepError "clientsession"))
            (hsPkgs."hamlet" or (buildDepError "hamlet"))
            (hsPkgs."network-conduit" or (buildDepError "network-conduit"))
            (hsPkgs."shakespeare-text" or (buildDepError "shakespeare-text"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."wai-extra" or (buildDepError "wai-extra"))
            (hsPkgs."warp" or (buildDepError "warp"))
            (hsPkgs."yaml" or (buildDepError "yaml"))
            (hsPkgs."hjsmin" or (buildDepError "hjsmin"))
            (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            ] ++ (if flags.blaze_html_0_5
            then [
              (hsPkgs."blaze-html" or (buildDepError "blaze-html"))
              (hsPkgs."blaze-markup" or (buildDepError "blaze-markup"))
              ]
            else [ (hsPkgs."blaze-html" or (buildDepError "blaze-html")) ]);
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hledger-web" or (buildDepError "hledger-web"))
            (hsPkgs."yesod-test" or (buildDepError "yesod-test"))
            (hsPkgs."yesod-default" or (buildDepError "yesod-default"))
            (hsPkgs."yesod-core" or (buildDepError "yesod-core"))
            ];
          };
        };
      };
    }