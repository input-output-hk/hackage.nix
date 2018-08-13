{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "HaRe";
        version = "0.8.2.0";
      };
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
      "HaRe" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.semigroups)
          (hsPkgs.monoid-extras)
          (hsPkgs.cabal-helper)
          (hsPkgs.filepath)
          (hsPkgs.ghc)
          (hsPkgs.ghc-paths)
          (hsPkgs.ghc-prim)
          (hsPkgs.ghc-syb-utils)
          (hsPkgs.ghc-mod)
          (hsPkgs.mtl)
          (hsPkgs.old-time)
          (hsPkgs.pretty)
          (hsPkgs.rosezipper)
          (hsPkgs.syb)
          (hsPkgs.hslogger)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.time)
          (hsPkgs.Strafunski-StrategyLib)
          (hsPkgs.syz)
          (hsPkgs.ghc-exactprint)
          (hsPkgs.monad-control)
          (hsPkgs.Cabal)
        ];
      };
      exes = {
        "ghc-hare" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.semigroups)
            (hsPkgs.monoid-extras)
            (hsPkgs.cabal-helper)
            (hsPkgs.filepath)
            (hsPkgs.ghc)
            (hsPkgs.ghc-paths)
            (hsPkgs.ghc-prim)
            (hsPkgs.ghc-syb-utils)
            (hsPkgs.ghc-mod)
            (hsPkgs.mtl)
            (hsPkgs.old-time)
            (hsPkgs.parsec)
            (hsPkgs.pretty)
            (hsPkgs.rosezipper)
            (hsPkgs.syb)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.transformers-base)
            (hsPkgs.hslogger)
            (hsPkgs.Strafunski-StrategyLib)
            (hsPkgs.syz)
            (hsPkgs.ghc-exactprint)
            (hsPkgs.monad-control)
            (hsPkgs.Cabal)
            (hsPkgs.HaRe)
          ];
        };
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Diff)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.containers)
            (hsPkgs.cabal-helper)
            (hsPkgs.semigroups)
            (hsPkgs.monoid-extras)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.ghc)
            (hsPkgs.ghc-paths)
            (hsPkgs.ghc-prim)
            (hsPkgs.ghc-syb-utils)
            (hsPkgs.ghc-mod)
            (hsPkgs.hspec)
            (hsPkgs.mtl)
            (hsPkgs.old-time)
            (hsPkgs.process)
            (hsPkgs.silently)
            (hsPkgs.stringbuilder)
            (hsPkgs.rosezipper)
            (hsPkgs.syb)
            (hsPkgs.transformers)
            (hsPkgs.transformers-base)
            (hsPkgs.time)
            (hsPkgs.hslogger)
            (hsPkgs.Strafunski-StrategyLib)
            (hsPkgs.syz)
            (hsPkgs.ghc-exactprint)
            (hsPkgs.monad-control)
            (hsPkgs.Cabal)
          ];
        };
      };
    };
  }