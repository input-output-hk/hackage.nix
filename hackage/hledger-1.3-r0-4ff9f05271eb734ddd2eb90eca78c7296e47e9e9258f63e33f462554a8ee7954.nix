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
    flags = { oldtime = false; terminfo = true; threaded = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "hledger"; version = "1.3"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Simon Michael <simon@joyful.com>";
      author = "Simon Michael <simon@joyful.com>";
      homepage = "http://hledger.org";
      url = "";
      synopsis = "Command-line interface for the hledger accounting tool";
      description = "This is hledger's command-line interface.\nIts basic function is to read a plain text file describing\nfinancial transactions and produce useful reports.\n\nhledger is a cross-platform program for tracking money, time, or\nany other commodity, using double-entry accounting and a simple,\neditable file format. It is inspired by and largely compatible\nwith ledger(1).  hledger provides command-line, curses and web\ninterfaces, and aims to be a reliable, practical tool for daily\nuse.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ((([
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."base-compat" or (buildDepError "base-compat"))
          (hsPkgs."ansi-terminal" or (buildDepError "ansi-terminal"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."file-embed" or (buildDepError "file-embed"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."here" or (buildDepError "here"))
          (hsPkgs."pretty-show" or (buildDepError "pretty-show"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."temporary" or (buildDepError "temporary"))
          (hsPkgs."tabular" or (buildDepError "tabular"))
          (hsPkgs."hledger-lib" or (buildDepError "hledger-lib"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
          (hsPkgs."csv" or (buildDepError "csv"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."haskeline" or (buildDepError "haskeline"))
          (hsPkgs."HUnit" or (buildDepError "HUnit"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."mtl-compat" or (buildDepError "mtl-compat"))
          (hsPkgs."old-time" or (buildDepError "old-time"))
          (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
          (hsPkgs."regex-tdfa" or (buildDepError "regex-tdfa"))
          (hsPkgs."safe" or (buildDepError "safe"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          (hsPkgs."wizards" or (buildDepError "wizards"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.6") (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))) ++ (if compiler.isGhc && (compiler.version).ge "7.10"
          then [ (hsPkgs."shakespeare" or (buildDepError "shakespeare")) ]
          else [
            (hsPkgs."shakespeare" or (buildDepError "shakespeare"))
            (hsPkgs."shakespeare-text" or (buildDepError "shakespeare-text"))
            ])) ++ (if flags.oldtime
          then [
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            ]
          else [
            (hsPkgs."time" or (buildDepError "time"))
            ])) ++ (pkgs.lib).optional (!system.isWindows && flags.terminfo) (hsPkgs."terminfo" or (buildDepError "terminfo"));
        };
      exes = {
        "hledger" = {
          depends = ((([
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."base-compat" or (buildDepError "base-compat"))
            (hsPkgs."ansi-terminal" or (buildDepError "ansi-terminal"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."file-embed" or (buildDepError "file-embed"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."here" or (buildDepError "here"))
            (hsPkgs."pretty-show" or (buildDepError "pretty-show"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."temporary" or (buildDepError "temporary"))
            (hsPkgs."tabular" or (buildDepError "tabular"))
            (hsPkgs."hledger-lib" or (buildDepError "hledger-lib"))
            (hsPkgs."hledger" or (buildDepError "hledger"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."csv" or (buildDepError "csv"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."haskeline" or (buildDepError "haskeline"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."mtl-compat" or (buildDepError "mtl-compat"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."regex-tdfa" or (buildDepError "regex-tdfa"))
            (hsPkgs."safe" or (buildDepError "safe"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."wizards" or (buildDepError "wizards"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.6") (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))) ++ (if compiler.isGhc && (compiler.version).ge "7.10"
            then [ (hsPkgs."shakespeare" or (buildDepError "shakespeare")) ]
            else [
              (hsPkgs."shakespeare" or (buildDepError "shakespeare"))
              (hsPkgs."shakespeare-text" or (buildDepError "shakespeare-text"))
              ])) ++ (if flags.oldtime
            then [
              (hsPkgs."time" or (buildDepError "time"))
              (hsPkgs."old-locale" or (buildDepError "old-locale"))
              ]
            else [
              (hsPkgs."time" or (buildDepError "time"))
              ])) ++ (pkgs.lib).optional (!system.isWindows && flags.terminfo) (hsPkgs."terminfo" or (buildDepError "terminfo"));
          };
        };
      tests = {
        "test" = {
          depends = ((([
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."base-compat" or (buildDepError "base-compat"))
            (hsPkgs."ansi-terminal" or (buildDepError "ansi-terminal"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."file-embed" or (buildDepError "file-embed"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."here" or (buildDepError "here"))
            (hsPkgs."pretty-show" or (buildDepError "pretty-show"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."temporary" or (buildDepError "temporary"))
            (hsPkgs."tabular" or (buildDepError "tabular"))
            (hsPkgs."hledger-lib" or (buildDepError "hledger-lib"))
            (hsPkgs."hledger" or (buildDepError "hledger"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."csv" or (buildDepError "csv"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."haskeline" or (buildDepError "haskeline"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."mtl-compat" or (buildDepError "mtl-compat"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."regex-tdfa" or (buildDepError "regex-tdfa"))
            (hsPkgs."safe" or (buildDepError "safe"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."wizards" or (buildDepError "wizards"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.6") (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))) ++ (if compiler.isGhc && (compiler.version).ge "7.10"
            then [ (hsPkgs."shakespeare" or (buildDepError "shakespeare")) ]
            else [
              (hsPkgs."shakespeare" or (buildDepError "shakespeare"))
              (hsPkgs."shakespeare-text" or (buildDepError "shakespeare-text"))
              ])) ++ (if flags.oldtime
            then [
              (hsPkgs."time" or (buildDepError "time"))
              (hsPkgs."old-locale" or (buildDepError "old-locale"))
              ]
            else [
              (hsPkgs."time" or (buildDepError "time"))
              ])) ++ (pkgs.lib).optional (!system.isWindows && flags.terminfo) (hsPkgs."terminfo" or (buildDepError "terminfo"));
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."base-compat" or (buildDepError "base-compat"))
            (hsPkgs."ansi-terminal" or (buildDepError "ansi-terminal"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."file-embed" or (buildDepError "file-embed"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."here" or (buildDepError "here"))
            (hsPkgs."pretty-show" or (buildDepError "pretty-show"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."temporary" or (buildDepError "temporary"))
            (hsPkgs."tabular" or (buildDepError "tabular"))
            (hsPkgs."hledger-lib" or (buildDepError "hledger-lib"))
            (hsPkgs."hledger" or (buildDepError "hledger"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."html" or (buildDepError "html"))
            (hsPkgs."timeit" or (buildDepError "timeit"))
            ] ++ (if flags.oldtime
            then [
              (hsPkgs."time" or (buildDepError "time"))
              (hsPkgs."old-locale" or (buildDepError "old-locale"))
              ]
            else [ (hsPkgs."time" or (buildDepError "time")) ]);
          };
        };
      };
    }