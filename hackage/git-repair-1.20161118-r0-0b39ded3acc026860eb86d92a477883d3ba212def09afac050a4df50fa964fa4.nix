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
    flags = { network-uri = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "git-repair"; version = "1.20161118"; };
      license = "LicenseRef-GPL";
      copyright = "2013 Joey Hess";
      maintainer = "Joey Hess <joey@kitenet.net>";
      author = "Joey Hess";
      homepage = "http://git-repair.branchable.com/";
      url = "";
      synopsis = "repairs a damanged git repisitory";
      description = "git-repair can repair various forms of damage to git repositories.\n\nIt is a complement to git fsck, which finds problems, but does not fix\nthem.\n\nAs well as avoiding the need to rm -rf a damaged repository and re-clone,\nusing git-repair can help rescue commits you've made to the damaged\nrepository and not yet pushed out.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (errorHandler.buildToolDepError "base")))
        (hsPkgs.buildPackages.hslogger or (pkgs.buildPackages.hslogger or (errorHandler.buildToolDepError "hslogger")))
        (hsPkgs.buildPackages.MissingH or (pkgs.buildPackages.MissingH or (errorHandler.buildToolDepError "MissingH")))
        (hsPkgs.buildPackages.unix-compat or (pkgs.buildPackages.unix-compat or (errorHandler.buildToolDepError "unix-compat")))
        (hsPkgs.buildPackages.process or (pkgs.buildPackages.process or (errorHandler.buildToolDepError "process")))
        (hsPkgs.buildPackages.unix or (pkgs.buildPackages.unix or (errorHandler.buildToolDepError "unix")))
        (hsPkgs.buildPackages.filepath or (pkgs.buildPackages.filepath or (errorHandler.buildToolDepError "filepath")))
        (hsPkgs.buildPackages.exceptions or (pkgs.buildPackages.exceptions or (errorHandler.buildToolDepError "exceptions")))
        (hsPkgs.buildPackages.bytestring or (pkgs.buildPackages.bytestring or (errorHandler.buildToolDepError "bytestring")))
        (hsPkgs.buildPackages.directory or (pkgs.buildPackages.directory or (errorHandler.buildToolDepError "directory")))
        (hsPkgs.buildPackages.IfElse or (pkgs.buildPackages.IfElse or (errorHandler.buildToolDepError "IfElse")))
        (hsPkgs.buildPackages.data-default or (pkgs.buildPackages.data-default or (errorHandler.buildToolDepError "data-default")))
        (hsPkgs.buildPackages.mtl or (pkgs.buildPackages.mtl or (errorHandler.buildToolDepError "mtl")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (errorHandler.buildToolDepError "Cabal")))
        ];
      };
    components = {
      exes = {
        "git-repair" = {
          depends = ([
            (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
            (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."unix-compat" or (errorHandler.buildDepError "unix-compat"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."IfElse" or (errorHandler.buildDepError "IfElse"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            ] ++ (if flags.network-uri
            then [
              (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
              (hsPkgs."network" or (errorHandler.buildDepError "network"))
              ]
            else [
              (hsPkgs."network" or (errorHandler.buildDepError "network"))
              (hsPkgs."network" or (errorHandler.buildDepError "network"))
              ])) ++ (if system.isWindows
            then [ (hsPkgs."setenv" or (errorHandler.buildDepError "setenv")) ]
            else [ (hsPkgs."unix" or (errorHandler.buildDepError "unix")) ]);
          buildable = true;
          };
        };
      };
    }