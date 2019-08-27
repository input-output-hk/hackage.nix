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
      identifier = { name = "git-repair"; version = "1.20170626"; };
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
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (buildToolDepError "base")))
        (hsPkgs.buildPackages.hslogger or (pkgs.buildPackages.hslogger or (buildToolDepError "hslogger")))
        (hsPkgs.buildPackages.split or (pkgs.buildPackages.split or (buildToolDepError "split")))
        (hsPkgs.buildPackages.unix-compat or (pkgs.buildPackages.unix-compat or (buildToolDepError "unix-compat")))
        (hsPkgs.buildPackages.process or (pkgs.buildPackages.process or (buildToolDepError "process")))
        (hsPkgs.buildPackages.unix or (pkgs.buildPackages.unix or (buildToolDepError "unix")))
        (hsPkgs.buildPackages.filepath or (pkgs.buildPackages.filepath or (buildToolDepError "filepath")))
        (hsPkgs.buildPackages.exceptions or (pkgs.buildPackages.exceptions or (buildToolDepError "exceptions")))
        (hsPkgs.buildPackages.bytestring or (pkgs.buildPackages.bytestring or (buildToolDepError "bytestring")))
        (hsPkgs.buildPackages.directory or (pkgs.buildPackages.directory or (buildToolDepError "directory")))
        (hsPkgs.buildPackages.IfElse or (pkgs.buildPackages.IfElse or (buildToolDepError "IfElse")))
        (hsPkgs.buildPackages.data-default or (pkgs.buildPackages.data-default or (buildToolDepError "data-default")))
        (hsPkgs.buildPackages.mtl or (pkgs.buildPackages.mtl or (buildToolDepError "mtl")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (buildToolDepError "Cabal")))
        ];
      };
    components = {
      exes = {
        "git-repair" = {
          depends = ([
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."hslogger" or (buildDepError "hslogger"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."unix-compat" or (buildDepError "unix-compat"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."IfElse" or (buildDepError "IfElse"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            ] ++ (if flags.network-uri
            then [
              (hsPkgs."network-uri" or (buildDepError "network-uri"))
              (hsPkgs."network" or (buildDepError "network"))
              ]
            else [
              (hsPkgs."network" or (buildDepError "network"))
              (hsPkgs."network" or (buildDepError "network"))
              ])) ++ (if system.isWindows
            then [ (hsPkgs."setenv" or (buildDepError "setenv")) ]
            else [ (hsPkgs."unix" or (buildDepError "unix")) ]);
          };
        };
      };
    }