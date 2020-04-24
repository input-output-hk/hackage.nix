{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "HaRe"; version = "0.8.1.0"; };
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
          (hsPkgs."monoid-extras" or ((hsPkgs.pkgs-errors).buildDepError "monoid-extras"))
          (hsPkgs."cabal-helper" or ((hsPkgs.pkgs-errors).buildDepError "cabal-helper"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc"))
          (hsPkgs."ghc-paths" or ((hsPkgs.pkgs-errors).buildDepError "ghc-paths"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          (hsPkgs."ghc-syb-utils" or ((hsPkgs.pkgs-errors).buildDepError "ghc-syb-utils"))
          (hsPkgs."ghc-mod" or ((hsPkgs.pkgs-errors).buildDepError "ghc-mod"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
          (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
          (hsPkgs."rosezipper" or ((hsPkgs.pkgs-errors).buildDepError "rosezipper"))
          (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
          (hsPkgs."hslogger" or ((hsPkgs.pkgs-errors).buildDepError "hslogger"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."transformers-base" or ((hsPkgs.pkgs-errors).buildDepError "transformers-base"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."Strafunski-StrategyLib" or ((hsPkgs.pkgs-errors).buildDepError "Strafunski-StrategyLib"))
          (hsPkgs."syz" or ((hsPkgs.pkgs-errors).buildDepError "syz"))
          (hsPkgs."ghc-exactprint" or ((hsPkgs.pkgs-errors).buildDepError "ghc-exactprint"))
          (hsPkgs."monad-control" or ((hsPkgs.pkgs-errors).buildDepError "monad-control"))
          (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
          ];
        buildable = if compiler.isGhc && (compiler.version).lt "7.10.2"
          then false
          else true;
        };
      exes = {
        "ghc-hare" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
            (hsPkgs."monoid-extras" or ((hsPkgs.pkgs-errors).buildDepError "monoid-extras"))
            (hsPkgs."cabal-helper" or ((hsPkgs.pkgs-errors).buildDepError "cabal-helper"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc"))
            (hsPkgs."ghc-paths" or ((hsPkgs.pkgs-errors).buildDepError "ghc-paths"))
            (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
            (hsPkgs."ghc-syb-utils" or ((hsPkgs.pkgs-errors).buildDepError "ghc-syb-utils"))
            (hsPkgs."ghc-mod" or ((hsPkgs.pkgs-errors).buildDepError "ghc-mod"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
            (hsPkgs."rosezipper" or ((hsPkgs.pkgs-errors).buildDepError "rosezipper"))
            (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."transformers-base" or ((hsPkgs.pkgs-errors).buildDepError "transformers-base"))
            (hsPkgs."hslogger" or ((hsPkgs.pkgs-errors).buildDepError "hslogger"))
            (hsPkgs."Strafunski-StrategyLib" or ((hsPkgs.pkgs-errors).buildDepError "Strafunski-StrategyLib"))
            (hsPkgs."syz" or ((hsPkgs.pkgs-errors).buildDepError "syz"))
            (hsPkgs."ghc-exactprint" or ((hsPkgs.pkgs-errors).buildDepError "ghc-exactprint"))
            (hsPkgs."monad-control" or ((hsPkgs.pkgs-errors).buildDepError "monad-control"))
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."HaRe" or ((hsPkgs.pkgs-errors).buildDepError "HaRe"))
            ];
          buildable = if compiler.isGhc && (compiler.version).lt "7.10.2"
            then false
            else true;
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."Diff" or ((hsPkgs.pkgs-errors).buildDepError "Diff"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."cabal-helper" or ((hsPkgs.pkgs-errors).buildDepError "cabal-helper"))
            (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
            (hsPkgs."monoid-extras" or ((hsPkgs.pkgs-errors).buildDepError "monoid-extras"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc"))
            (hsPkgs."ghc-paths" or ((hsPkgs.pkgs-errors).buildDepError "ghc-paths"))
            (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
            (hsPkgs."ghc-syb-utils" or ((hsPkgs.pkgs-errors).buildDepError "ghc-syb-utils"))
            (hsPkgs."ghc-mod" or ((hsPkgs.pkgs-errors).buildDepError "ghc-mod"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."silently" or ((hsPkgs.pkgs-errors).buildDepError "silently"))
            (hsPkgs."stringbuilder" or ((hsPkgs.pkgs-errors).buildDepError "stringbuilder"))
            (hsPkgs."rosezipper" or ((hsPkgs.pkgs-errors).buildDepError "rosezipper"))
            (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."transformers-base" or ((hsPkgs.pkgs-errors).buildDepError "transformers-base"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."hslogger" or ((hsPkgs.pkgs-errors).buildDepError "hslogger"))
            (hsPkgs."Strafunski-StrategyLib" or ((hsPkgs.pkgs-errors).buildDepError "Strafunski-StrategyLib"))
            (hsPkgs."syz" or ((hsPkgs.pkgs-errors).buildDepError "syz"))
            (hsPkgs."ghc-exactprint" or ((hsPkgs.pkgs-errors).buildDepError "ghc-exactprint"))
            (hsPkgs."monad-control" or ((hsPkgs.pkgs-errors).buildDepError "monad-control"))
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            ];
          buildable = if compiler.isGhc && (compiler.version).lt "7.10.2"
            then false
            else true;
          };
        };
      };
    }