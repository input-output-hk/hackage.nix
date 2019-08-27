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
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "HaRe"; version = "0.8.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Alan Zimmerman";
      author = "Chris Brown, Huiqing Li, Simon Thompson, Alan Zimmerman";
      homepage = "https://github.com/RefactoringTools/HaRe/wiki";
      url = "";
      synopsis = "the Haskell Refactorer.";
      description = "A Haskell 2010 refactoring tool. HaRe supports the full\nHaskell 2010 standard, through making use of the GHC API.\n\nVersion 0.7.2.8 supports up to GHC 7.6.3.\n\nThere is no support for GHC 7.8.x. There will never be support for GHC 7.8.x\n\nFrom version 0.8.0.0, GHC 7.10.2 is supported.\n\nIt is tested against GHC 7.10.2 (via travis-ci.org)\n\nIt currently only has emacs integration built in, community input\nwelcome for others.\n\nHaRe attempts to operate in a safe way, by first writing new files with\nproposed changes, and only swapping these with the originals when the change\nis accepted. In the process the original file is renamed to have the current\ndate/time as a suffix. Thus it should be possible to (manually) undo changes.\n\nEven so, it is strongly advised to back up any source files before\nrefactoring, as we can make no promises as to the reliability of this tool.\nUse at your own risk.\n\nAt the moment parsing of any file with FFI exports will fail.\n\nSee Language.Haskell.Refact.HaRe for the current list of refactorings supported\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."monoid-extras" or (buildDepError "monoid-extras"))
          (hsPkgs."cabal-helper" or (buildDepError "cabal-helper"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."ghc" or (buildDepError "ghc"))
          (hsPkgs."ghc-paths" or (buildDepError "ghc-paths"))
          (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
          (hsPkgs."ghc-syb-utils" or (buildDepError "ghc-syb-utils"))
          (hsPkgs."ghc-mod" or (buildDepError "ghc-mod"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."old-time" or (buildDepError "old-time"))
          (hsPkgs."pretty" or (buildDepError "pretty"))
          (hsPkgs."rosezipper" or (buildDepError "rosezipper"))
          (hsPkgs."syb" or (buildDepError "syb"))
          (hsPkgs."hslogger" or (buildDepError "hslogger"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."transformers-base" or (buildDepError "transformers-base"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."Strafunski-StrategyLib" or (buildDepError "Strafunski-StrategyLib"))
          (hsPkgs."syz" or (buildDepError "syz"))
          (hsPkgs."ghc-exactprint" or (buildDepError "ghc-exactprint"))
          (hsPkgs."monad-control" or (buildDepError "monad-control"))
          (hsPkgs."Cabal" or (buildDepError "Cabal"))
          ];
        };
      exes = {
        "ghc-hare" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."monoid-extras" or (buildDepError "monoid-extras"))
            (hsPkgs."cabal-helper" or (buildDepError "cabal-helper"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."ghc" or (buildDepError "ghc"))
            (hsPkgs."ghc-paths" or (buildDepError "ghc-paths"))
            (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
            (hsPkgs."ghc-syb-utils" or (buildDepError "ghc-syb-utils"))
            (hsPkgs."ghc-mod" or (buildDepError "ghc-mod"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."rosezipper" or (buildDepError "rosezipper"))
            (hsPkgs."syb" or (buildDepError "syb"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."transformers-base" or (buildDepError "transformers-base"))
            (hsPkgs."hslogger" or (buildDepError "hslogger"))
            (hsPkgs."Strafunski-StrategyLib" or (buildDepError "Strafunski-StrategyLib"))
            (hsPkgs."syz" or (buildDepError "syz"))
            (hsPkgs."ghc-exactprint" or (buildDepError "ghc-exactprint"))
            (hsPkgs."monad-control" or (buildDepError "monad-control"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."HaRe" or (buildDepError "HaRe"))
            ];
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Diff" or (buildDepError "Diff"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."cabal-helper" or (buildDepError "cabal-helper"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."monoid-extras" or (buildDepError "monoid-extras"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."ghc" or (buildDepError "ghc"))
            (hsPkgs."ghc-paths" or (buildDepError "ghc-paths"))
            (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
            (hsPkgs."ghc-syb-utils" or (buildDepError "ghc-syb-utils"))
            (hsPkgs."ghc-mod" or (buildDepError "ghc-mod"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."silently" or (buildDepError "silently"))
            (hsPkgs."stringbuilder" or (buildDepError "stringbuilder"))
            (hsPkgs."rosezipper" or (buildDepError "rosezipper"))
            (hsPkgs."syb" or (buildDepError "syb"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."transformers-base" or (buildDepError "transformers-base"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."hslogger" or (buildDepError "hslogger"))
            (hsPkgs."Strafunski-StrategyLib" or (buildDepError "Strafunski-StrategyLib"))
            (hsPkgs."syz" or (buildDepError "syz"))
            (hsPkgs."ghc-exactprint" or (buildDepError "ghc-exactprint"))
            (hsPkgs."monad-control" or (buildDepError "monad-control"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            ];
          };
        };
      };
    }