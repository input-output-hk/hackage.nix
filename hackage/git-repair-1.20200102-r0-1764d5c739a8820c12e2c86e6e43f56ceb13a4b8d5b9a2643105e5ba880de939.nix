{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "git-repair"; version = "1.20200102"; };
      license = "AGPL-3.0-only";
      copyright = "2013 Joey Hess";
      maintainer = "Joey Hess <joey@kitenet.net>";
      author = "Joey Hess";
      homepage = "http://git-repair.branchable.com/";
      url = "";
      synopsis = "repairs a damanged git repisitory";
      description = "git-repair can repair various forms of damage to git repositories.\n\nIt is a complement to git fsck, which finds problems, but does not fix\nthem.\n\nAs well as avoiding the need to rm -rf a damaged repository and re-clone,\nusing git-repair can help rescue commits you've made to the damaged\nrepository and not yet pushed out.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or ((hsPkgs.pkgs-errors).buildToolDepError "base")))
        (hsPkgs.buildPackages.hslogger or (pkgs.buildPackages.hslogger or ((hsPkgs.pkgs-errors).buildToolDepError "hslogger")))
        (hsPkgs.buildPackages.split or (pkgs.buildPackages.split or ((hsPkgs.pkgs-errors).buildToolDepError "split")))
        (hsPkgs.buildPackages.unix-compat or (pkgs.buildPackages.unix-compat or ((hsPkgs.pkgs-errors).buildToolDepError "unix-compat")))
        (hsPkgs.buildPackages.process or (pkgs.buildPackages.process or ((hsPkgs.pkgs-errors).buildToolDepError "process")))
        (hsPkgs.buildPackages.unix or (pkgs.buildPackages.unix or ((hsPkgs.pkgs-errors).buildToolDepError "unix")))
        (hsPkgs.buildPackages.filepath or (pkgs.buildPackages.filepath or ((hsPkgs.pkgs-errors).buildToolDepError "filepath")))
        (hsPkgs.buildPackages.exceptions or (pkgs.buildPackages.exceptions or ((hsPkgs.pkgs-errors).buildToolDepError "exceptions")))
        (hsPkgs.buildPackages.bytestring or (pkgs.buildPackages.bytestring or ((hsPkgs.pkgs-errors).buildToolDepError "bytestring")))
        (hsPkgs.buildPackages.directory or (pkgs.buildPackages.directory or ((hsPkgs.pkgs-errors).buildToolDepError "directory")))
        (hsPkgs.buildPackages.IfElse or (pkgs.buildPackages.IfElse or ((hsPkgs.pkgs-errors).buildToolDepError "IfElse")))
        (hsPkgs.buildPackages.data-default or (pkgs.buildPackages.data-default or ((hsPkgs.pkgs-errors).buildToolDepError "data-default")))
        (hsPkgs.buildPackages.mtl or (pkgs.buildPackages.mtl or ((hsPkgs.pkgs-errors).buildToolDepError "mtl")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or ((hsPkgs.pkgs-errors).buildToolDepError "Cabal")))
        ];
      };
    components = {
      exes = {
        "git-repair" = {
          depends = [
            (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
            (hsPkgs."hslogger" or ((hsPkgs.pkgs-errors).buildDepError "hslogger"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."unix-compat" or ((hsPkgs.pkgs-errors).buildDepError "unix-compat"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."IfElse" or ((hsPkgs.pkgs-errors).buildDepError "IfElse"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
            (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
            (hsPkgs."network-uri" or ((hsPkgs.pkgs-errors).buildDepError "network-uri"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."filepath-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "filepath-bytestring"))
            ] ++ (if system.isWindows
            then [
              (hsPkgs."setenv" or ((hsPkgs.pkgs-errors).buildDepError "setenv"))
              ]
            else [
              (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
              ]);
          buildable = true;
          };
        };
      };
    }