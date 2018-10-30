{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "HaRe";
        version = "0.8.4.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Alan Zimmerman (alan.zimm@gmail.com)";
      author = "Chris Brown, Huiqing Li, Simon Thompson,\nAlan Zimmerman, Stephen Adams";
      homepage = "https://github.com/RefactoringTools/HaRe/wiki";
      url = "";
      synopsis = "the Haskell Refactorer.";
      description = "A Haskell 2010 refactoring tool. HaRe supports the full\nHaskell 2010 standard, through making use of the GHC API.\n\nVersion 0.7.2.8 supports up to GHC 7.6.3.\n\nThere is no support for GHC 7.8.x. There will never be support for GHC 7.8.x\n\nFrom version 0.8.0.0, GHC 7.10.2 is supported.\n\nFrom version 0.8.3.0, GHC 8.0.1 is supported.\n\nFrom version 0.8.4.0, GHC 8.0.2 is supported.\n\nIt is tested against GHC 7.10.3, GHC 8.0.1 and GHC 8.0.2 (via travis-ci.org)\n\nIt currently only has emacs integration built in, community input\nwelcome for others.\n\nHaRe attempts to operate in a safe way, by first writing new files with\nproposed changes, and only swapping these with the originals when the change\nis accepted. In the process the original file is renamed to have the current\ndate/time as a suffix. Thus it should be possible to (manually) undo changes.\n\nEven so, it is strongly advised to back up any source files before\nrefactoring, as we can make no promises as to the reliability of this tool.\nUse at your own risk.\n\nAt the moment parsing of any file with FFI exports will fail.\n\nSee Language.Haskell.Refact.HaRe for the current list of refactorings supported\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.Strafunski-StrategyLib)
          (hsPkgs.cabal-helper)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.ghc)
          (hsPkgs.ghc-exactprint)
          (hsPkgs.ghc-mod)
          (hsPkgs.ghc-syb-utils)
          (hsPkgs.hslogger)
          (hsPkgs.monad-control)
          (hsPkgs.mtl)
          (hsPkgs.syb)
          (hsPkgs.syz)
        ];
      };
      exes = {
        "ghc-hare" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ghc-mod)
            (hsPkgs.gitrev)
            (hsPkgs.mtl)
            (hsPkgs.optparse-applicative)
            (hsPkgs.optparse-simple)
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
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.foldl)
            (hsPkgs.ghc)
            (hsPkgs.ghc-exactprint)
            (hsPkgs.ghc-mod)
            (hsPkgs.ghc-syb-utils)
            (hsPkgs.hslogger)
            (hsPkgs.hspec)
            (hsPkgs.mtl)
            (hsPkgs.turtle)
            (hsPkgs.foldl)
            (hsPkgs.attoparsec)
            (hsPkgs.base-prelude)
            (hsPkgs.conversion-case-insensitive)
            (hsPkgs.conversion)
            (hsPkgs.conversion-text)
            (hsPkgs.parsec)
            (hsPkgs.case-insensitive)
            (hsPkgs.HaRe)
          ];
        };
      };
    };
  }