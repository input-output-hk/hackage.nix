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
        version = "0.7.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Alan Zimmerman";
      author = "Chris Brown, Huiqing Li, Simon Thompson, Alan Zimmerman";
      homepage = "http://www.cs.kent.ac.uk/projects/refactor-fp";
      url = "";
      synopsis = "the Haskell Refactorer.";
      description = "A Haskell 2010 refactoring tool. HaRe supports the full\nHaskell 2010 standard, through making use of the GHC API.\n\nIt is tested against GHC 7.4.x and 7.6.x (via travis-ci.org)\n\nIt currently only has emacs integration built in, community input\nwelcome for others.\n\nWarning: This is alpha code. Always commit code to your version\ncontrol system before refactoring. The developers make no\nwarranties, use at your own risk. May frighten children and dogs.\n\nThe renaming refactoring seems reasonably reliable.\n\nCurrent known defects:\n\n* liftToTopLevel of a recursive function may introduce parameter\nerrors. e.g. lifting 'g' in the 'zmapQ' function from 'syz-0.2.0.0'\n'Data.Generics.Zipper' results in the following\n\n>  zmapQ f z = reverse \$ downQ [] g z where\n>       g z' = query f z' : leftQ [] g z'\n\nbecomes\n\n>  zmapQ f z = reverse \$ downQ [] (g f g)z\n>\n>  g f z'g= query f z' : leftQ [] (g f g)g f g)z'";
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
            (hsPkgs.HaRe)
          ];
        };
      };
    };
  }