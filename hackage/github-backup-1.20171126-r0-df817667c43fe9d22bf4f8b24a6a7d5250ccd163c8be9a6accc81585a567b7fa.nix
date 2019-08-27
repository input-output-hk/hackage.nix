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
    flags = { network-uri = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "github-backup"; version = "1.20171126"; };
      license = "GPL-3.0-only";
      copyright = "2012 Joey Hess";
      maintainer = "Joey Hess <id@joeyh.name>";
      author = "Joey Hess";
      homepage = "https://github-backup.branchable.com/";
      url = "";
      synopsis = "backs up everything github knows about a repository, to the repository";
      description = "github-backup is a simple tool you run in a git repository you cloned from\nGithub. It backs up everything Github knows about the repository, including\nother forks, issues, comments, milestones, pull requests, and watchers.\nAlso includes gitriddance, which can be used to close all open issues and\npull requests.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (buildToolDepError "base")))
        (hsPkgs.buildPackages.hslogger or (pkgs.buildPackages.hslogger or (buildToolDepError "hslogger")))
        (hsPkgs.buildPackages.split or (pkgs.buildPackages.split or (buildToolDepError "split")))
        (hsPkgs.buildPackages.directory or (pkgs.buildPackages.directory or (buildToolDepError "directory")))
        (hsPkgs.buildPackages.process or (pkgs.buildPackages.process or (buildToolDepError "process")))
        (hsPkgs.buildPackages.unix-compat or (pkgs.buildPackages.unix-compat or (buildToolDepError "unix-compat")))
        (hsPkgs.buildPackages.unix or (pkgs.buildPackages.unix or (buildToolDepError "unix")))
        (hsPkgs.buildPackages.exceptions or (pkgs.buildPackages.exceptions or (buildToolDepError "exceptions")))
        (hsPkgs.buildPackages.bytestring or (pkgs.buildPackages.bytestring or (buildToolDepError "bytestring")))
        (hsPkgs.buildPackages.filepath or (pkgs.buildPackages.filepath or (buildToolDepError "filepath")))
        (hsPkgs.buildPackages.IfElse or (pkgs.buildPackages.IfElse or (buildToolDepError "IfElse")))
        (hsPkgs.buildPackages.mtl or (pkgs.buildPackages.mtl or (buildToolDepError "mtl")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (buildToolDepError "Cabal")))
        ];
      };
    components = {
      exes = {
        "github-backup" = {
          depends = ([
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."github" or (buildDepError "github"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."hslogger" or (buildDepError "hslogger"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."unix-compat" or (buildDepError "unix-compat"))
            (hsPkgs."IfElse" or (buildDepError "IfElse"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."pretty-show" or (buildDepError "pretty-show"))
            ] ++ (if !system.isWindows
            then [ (hsPkgs."unix" or (buildDepError "unix")) ]
            else [
              (hsPkgs."Win32" or (buildDepError "Win32"))
              (hsPkgs."setenv" or (buildDepError "setenv"))
              ])) ++ (if flags.network-uri
            then [
              (hsPkgs."network-uri" or (buildDepError "network-uri"))
              (hsPkgs."network" or (buildDepError "network"))
              ]
            else [
              (hsPkgs."network" or (buildDepError "network"))
              (hsPkgs."network" or (buildDepError "network"))
              ]);
          };
        "gitriddance" = {
          depends = ([
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."github" or (buildDepError "github"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."hslogger" or (buildDepError "hslogger"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."unix-compat" or (buildDepError "unix-compat"))
            (hsPkgs."IfElse" or (buildDepError "IfElse"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            ] ++ (if !system.isWindows
            then [ (hsPkgs."unix" or (buildDepError "unix")) ]
            else [
              (hsPkgs."Win32" or (buildDepError "Win32"))
              (hsPkgs."setenv" or (buildDepError "setenv"))
              ])) ++ (if flags.network-uri
            then [
              (hsPkgs."network-uri" or (buildDepError "network-uri"))
              (hsPkgs."network" or (buildDepError "network"))
              ]
            else [
              (hsPkgs."network" or (buildDepError "network"))
              (hsPkgs."network" or (buildDepError "network"))
              ]);
          };
        };
      };
    }