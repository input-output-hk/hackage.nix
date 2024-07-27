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
      specVersion = "1.10";
      identifier = { name = "git-repair"; version = "1.20220404"; };
      license = "AGPL-3.0-only";
      copyright = "2013-2022 Joey Hess";
      maintainer = "Joey Hess <joey@kitenet.net>";
      author = "Joey Hess";
      homepage = "http://git-repair.branchable.com/";
      url = "";
      synopsis = "repairs a damaged git repository";
      description = "git-repair can repair various forms of damage to git repositories.\n\nIt is a complement to git fsck, which finds problems, but does not fix\nthem.\n\nAs well as avoiding the need to rm -rf a damaged repository and re-clone,\nusing git-repair can help rescue commits you've made to the damaged\nrepository and not yet pushed out.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.pkgsBuildBuild.base or (pkgs.pkgsBuildBuild.base or (errorHandler.setupDepError "base")))
        (hsPkgs.pkgsBuildBuild.hslogger or (pkgs.pkgsBuildBuild.hslogger or (errorHandler.setupDepError "hslogger")))
        (hsPkgs.pkgsBuildBuild.split or (pkgs.pkgsBuildBuild.split or (errorHandler.setupDepError "split")))
        (hsPkgs.pkgsBuildBuild.unix-compat or (pkgs.pkgsBuildBuild.unix-compat or (errorHandler.setupDepError "unix-compat")))
        (hsPkgs.pkgsBuildBuild.process or (pkgs.pkgsBuildBuild.process or (errorHandler.setupDepError "process")))
        (hsPkgs.pkgsBuildBuild.unix or (pkgs.pkgsBuildBuild.unix or (errorHandler.setupDepError "unix")))
        (hsPkgs.pkgsBuildBuild.filepath or (pkgs.pkgsBuildBuild.filepath or (errorHandler.setupDepError "filepath")))
        (hsPkgs.pkgsBuildBuild.filepath-bytestring or (pkgs.pkgsBuildBuild.filepath-bytestring or (errorHandler.setupDepError "filepath-bytestring")))
        (hsPkgs.pkgsBuildBuild.async or (pkgs.pkgsBuildBuild.async or (errorHandler.setupDepError "async")))
        (hsPkgs.pkgsBuildBuild.exceptions or (pkgs.pkgsBuildBuild.exceptions or (errorHandler.setupDepError "exceptions")))
        (hsPkgs.pkgsBuildBuild.bytestring or (pkgs.pkgsBuildBuild.bytestring or (errorHandler.setupDepError "bytestring")))
        (hsPkgs.pkgsBuildBuild.directory or (pkgs.pkgsBuildBuild.directory or (errorHandler.setupDepError "directory")))
        (hsPkgs.pkgsBuildBuild.IfElse or (pkgs.pkgsBuildBuild.IfElse or (errorHandler.setupDepError "IfElse")))
        (hsPkgs.pkgsBuildBuild.data-default or (pkgs.pkgsBuildBuild.data-default or (errorHandler.setupDepError "data-default")))
        (hsPkgs.pkgsBuildBuild.mtl or (pkgs.pkgsBuildBuild.mtl or (errorHandler.setupDepError "mtl")))
        (hsPkgs.pkgsBuildBuild.Cabal or (pkgs.pkgsBuildBuild.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.pkgsBuildBuild.time or (pkgs.pkgsBuildBuild.time or (errorHandler.setupDepError "time")))
      ];
    };
    components = {
      exes = {
        "git-repair" = {
          depends = [
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
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
            (hsPkgs."IfElse" or (errorHandler.buildDepError "IfElse"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."filepath-bytestring" or (errorHandler.buildDepError "filepath-bytestring"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ] ++ (if system.isWindows
            then [ (hsPkgs."setenv" or (errorHandler.buildDepError "setenv")) ]
            else [ (hsPkgs."unix" or (errorHandler.buildDepError "unix")) ]);
          buildable = true;
        };
      };
    };
  }