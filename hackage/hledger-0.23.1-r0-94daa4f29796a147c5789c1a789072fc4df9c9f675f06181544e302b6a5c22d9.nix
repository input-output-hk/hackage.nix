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
    flags = { threaded = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "hledger"; version = "0.23.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Simon Michael <simon@joyful.com>";
      author = "Simon Michael <simon@joyful.com>";
      homepage = "http://hledger.org";
      url = "";
      synopsis = "The main command-line interface for the hledger accounting tool.";
      description = "hledger is a library and set of user tools for working\nwith financial data (or anything that can be tracked in a\ndouble-entry accounting ledger.) It is a haskell port and\nfriendly fork of John Wiegley's Ledger. hledger provides\ncommand-line, curses and web interfaces, and aims to be a\nreliable, practical tool for daily use.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."hledger-lib" or (buildDepError "hledger-lib"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."haskeline" or (buildDepError "haskeline"))
          (hsPkgs."HUnit" or (buildDepError "HUnit"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."old-locale" or (buildDepError "old-locale"))
          (hsPkgs."old-time" or (buildDepError "old-time"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."regexpr" or (buildDepError "regexpr"))
          (hsPkgs."safe" or (buildDepError "safe"))
          (hsPkgs."shakespeare-text" or (buildDepError "shakespeare-text"))
          (hsPkgs."shakespeare" or (buildDepError "shakespeare"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."tabular" or (buildDepError "tabular"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          (hsPkgs."wizards" or (buildDepError "wizards"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "7.4") (hsPkgs."pretty-show" or (buildDepError "pretty-show"));
        };
      exes = {
        "hledger" = {
          depends = [
            (hsPkgs."hledger-lib" or (buildDepError "hledger-lib"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."haskeline" or (buildDepError "haskeline"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."regexpr" or (buildDepError "regexpr"))
            (hsPkgs."safe" or (buildDepError "safe"))
            (hsPkgs."shakespeare-text" or (buildDepError "shakespeare-text"))
            (hsPkgs."shakespeare" or (buildDepError "shakespeare"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."tabular" or (buildDepError "tabular"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."wizards" or (buildDepError "wizards"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "7.4") (hsPkgs."pretty-show" or (buildDepError "pretty-show"));
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."hledger-lib" or (buildDepError "hledger-lib"))
            (hsPkgs."hledger" or (buildDepError "hledger"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."csv" or (buildDepError "csv"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."haskeline" or (buildDepError "haskeline"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."regexpr" or (buildDepError "regexpr"))
            (hsPkgs."safe" or (buildDepError "safe"))
            (hsPkgs."shakespeare-text" or (buildDepError "shakespeare-text"))
            (hsPkgs."shakespeare" or (buildDepError "shakespeare"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."tabular" or (buildDepError "tabular"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."wizards" or (buildDepError "wizards"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "7.4") (hsPkgs."pretty-show" or (buildDepError "pretty-show"));
          };
        };
      };
    }