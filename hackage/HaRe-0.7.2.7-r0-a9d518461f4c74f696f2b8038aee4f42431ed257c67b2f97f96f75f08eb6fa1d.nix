{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "HaRe";
        version = "0.7.2.7";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Alan Zimmerman";
      author = "Chris Brown, Huiqing Li, Simon Thompson, Alan Zimmerman";
      homepage = "https://github.com/RefactoringTools/HaRe/wiki";
      url = "";
      synopsis = "the Haskell Refactorer.";
      description = "A Haskell 2010 refactoring tool. HaRe supports the full\nHaskell 2010 standard, through making use of the GHC API.\n\nIt is tested against GHC 7.4.x and 7.6.x (via travis-ci.org)\n\nIt currently only has emacs integration built in, community input\nwelcome for others.\n\nWarning: This is alpha code. Always commit code to your version\ncontrol system before refactoring. The developers make no\nwarranties, use at your own risk.\n\nDespite the disclaimer, HaRe attempts to operate in a safe way, by\nfirst writing new files with proposed changes, and only swapping\nthese with the originals when the change is accepted. In the\nprocess the original file is renamed to have the current date/time\nas a suffix. Thus it should be possible to (manually) undo changes.\n\nThe renaming refactoring seems reasonably reliable, as does lifting\nand demoting\n\nAt the moment parsing of any file with FFI exports will fail.\n";
      buildType = "Simple";
    };
    components = {
      "HaRe" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.dual-tree)
          (hsPkgs.semigroups)
          (hsPkgs.monoid-extras)
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
          (hsPkgs.time)
          (hsPkgs.Strafunski-StrategyLib)
          (hsPkgs.syz)
          (hsPkgs.haskell-token-utils)
        ];
      };
      exes = {
        "ghc-hare" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.dual-tree)
            (hsPkgs.semigroups)
            (hsPkgs.monoid-extras)
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
            (hsPkgs.hslogger)
            (hsPkgs.Strafunski-StrategyLib)
            (hsPkgs.syz)
            (hsPkgs.haskell-token-utils)
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
            (hsPkgs.dual-tree)
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
            (hsPkgs.time)
            (hsPkgs.hslogger)
            (hsPkgs.Strafunski-StrategyLib)
            (hsPkgs.syz)
            (hsPkgs.haskell-token-utils)
            (hsPkgs.HaRe)
          ];
        };
      };
    };
  }