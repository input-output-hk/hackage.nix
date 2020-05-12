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
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "github-backup"; version = "1.20191219"; };
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
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (errorHandler.buildToolDepError "base")))
        (hsPkgs.buildPackages.hslogger or (pkgs.buildPackages.hslogger or (errorHandler.buildToolDepError "hslogger")))
        (hsPkgs.buildPackages.split or (pkgs.buildPackages.split or (errorHandler.buildToolDepError "split")))
        (hsPkgs.buildPackages.directory or (pkgs.buildPackages.directory or (errorHandler.buildToolDepError "directory")))
        (hsPkgs.buildPackages.process or (pkgs.buildPackages.process or (errorHandler.buildToolDepError "process")))
        (hsPkgs.buildPackages.unix-compat or (pkgs.buildPackages.unix-compat or (errorHandler.buildToolDepError "unix-compat")))
        (hsPkgs.buildPackages.unix or (pkgs.buildPackages.unix or (errorHandler.buildToolDepError "unix")))
        (hsPkgs.buildPackages.exceptions or (pkgs.buildPackages.exceptions or (errorHandler.buildToolDepError "exceptions")))
        (hsPkgs.buildPackages.bytestring or (pkgs.buildPackages.bytestring or (errorHandler.buildToolDepError "bytestring")))
        (hsPkgs.buildPackages.filepath or (pkgs.buildPackages.filepath or (errorHandler.buildToolDepError "filepath")))
        (hsPkgs.buildPackages.IfElse or (pkgs.buildPackages.IfElse or (errorHandler.buildToolDepError "IfElse")))
        (hsPkgs.buildPackages.mtl or (pkgs.buildPackages.mtl or (errorHandler.buildToolDepError "mtl")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (errorHandler.buildToolDepError "Cabal")))
        ];
      };
    components = {
      exes = {
        "github-backup" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."github" or (errorHandler.buildDepError "github"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."unix-compat" or (errorHandler.buildDepError "unix-compat"))
            (hsPkgs."IfElse" or (errorHandler.buildDepError "IfElse"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."pretty-show" or (errorHandler.buildDepError "pretty-show"))
            (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            ] ++ (if !system.isWindows
            then [ (hsPkgs."unix" or (errorHandler.buildDepError "unix")) ]
            else [
              (hsPkgs."Win32" or (errorHandler.buildDepError "Win32"))
              (hsPkgs."setenv" or (errorHandler.buildDepError "setenv"))
              ]);
          buildable = true;
          };
        "gitriddance" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."github" or (errorHandler.buildDepError "github"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."unix-compat" or (errorHandler.buildDepError "unix-compat"))
            (hsPkgs."IfElse" or (errorHandler.buildDepError "IfElse"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            ] ++ (if !system.isWindows
            then [ (hsPkgs."unix" or (errorHandler.buildDepError "unix")) ]
            else [
              (hsPkgs."Win32" or (errorHandler.buildDepError "Win32"))
              (hsPkgs."setenv" or (errorHandler.buildDepError "setenv"))
              ]);
          buildable = true;
          };
        };
      };
    }