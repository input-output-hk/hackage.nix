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
    flags = { vty = false; web = false; chart = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "hledger"; version = "0.8"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Simon Michael <simon@joyful.com>";
      author = "Simon Michael <simon@joyful.com>";
      homepage = "http://hledger.org";
      url = "";
      synopsis = "A command-line (or curses or web-based) double-entry accounting tool.";
      description = "hledger reads a plain text ledger file or timelog\ndescribing your transactions and displays precise\nbalance and register reports via command-line, curses\nor web interface.  It is a remix, in haskell, of John\nWiegley's excellent c++ ledger.  hledger aims to be a\npractical, accessible tool for end users and a useful\nlibrary for finance-minded haskell programmers.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."haskell98" or (buildDepError "haskell98"))
          (hsPkgs."old-time" or (buildDepError "old-time"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          (hsPkgs."HUnit" or (buildDepError "HUnit"))
          ];
        buildable = true;
        };
      exes = {
        "hledger" = {
          depends = (([
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."csv" or (buildDepError "csv"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."haskell98" or (buildDepError "haskell98"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."regexpr" or (buildDepError "regexpr"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."testpack" or (buildDepError "testpack"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."safe" or (buildDepError "safe"))
            ] ++ (pkgs.lib).optional (flags.vty) (hsPkgs."vty" or (buildDepError "vty"))) ++ (pkgs.lib).optionals (flags.web) [
            (hsPkgs."hsp" or (buildDepError "hsp"))
            (hsPkgs."hsx" or (buildDepError "hsx"))
            (hsPkgs."xhtml" or (buildDepError "xhtml"))
            (hsPkgs."loli" or (buildDepError "loli"))
            (hsPkgs."io-storage" or (buildDepError "io-storage"))
            (hsPkgs."hack-contrib" or (buildDepError "hack-contrib"))
            (hsPkgs."hack" or (buildDepError "hack"))
            (hsPkgs."hack-handler-happstack" or (buildDepError "hack-handler-happstack"))
            (hsPkgs."happstack" or (buildDepError "happstack"))
            (hsPkgs."happstack-data" or (buildDepError "happstack-data"))
            (hsPkgs."happstack-server" or (buildDepError "happstack-server"))
            (hsPkgs."happstack-state" or (buildDepError "happstack-state"))
            (hsPkgs."HTTP" or (buildDepError "HTTP"))
            (hsPkgs."applicative-extras" or (buildDepError "applicative-extras"))
            ]) ++ (pkgs.lib).optionals (flags.chart) [
            (hsPkgs."Chart" or (buildDepError "Chart"))
            (hsPkgs."colour" or (buildDepError "colour"))
            ];
          buildable = true;
          };
        };
      };
    }