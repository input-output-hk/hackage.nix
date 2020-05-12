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
      specVersion = "1.8";
      identifier = { name = "HaRe"; version = "0.7.1.2"; };
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
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."dual-tree" or (errorHandler.buildDepError "dual-tree"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."monoid-extras" or (errorHandler.buildDepError "monoid-extras"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."ghc-syb-utils" or (errorHandler.buildDepError "ghc-syb-utils"))
          (hsPkgs."ghc-mod" or (errorHandler.buildDepError "ghc-mod"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."rosezipper" or (errorHandler.buildDepError "rosezipper"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."Strafunski-StrategyLib" or (errorHandler.buildDepError "Strafunski-StrategyLib"))
          (hsPkgs."syz" or (errorHandler.buildDepError "syz"))
          ];
        buildable = true;
        };
      exes = {
        "ghc-hare" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."dual-tree" or (errorHandler.buildDepError "dual-tree"))
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
            (hsPkgs."monoid-extras" or (errorHandler.buildDepError "monoid-extras"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."ghc-syb-utils" or (errorHandler.buildDepError "ghc-syb-utils"))
            (hsPkgs."ghc-mod" or (errorHandler.buildDepError "ghc-mod"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."rosezipper" or (errorHandler.buildDepError "rosezipper"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
            (hsPkgs."Strafunski-StrategyLib" or (errorHandler.buildDepError "Strafunski-StrategyLib"))
            (hsPkgs."syz" or (errorHandler.buildDepError "syz"))
            (hsPkgs."HaRe" or (errorHandler.buildDepError "HaRe"))
            ];
          buildable = true;
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Diff" or (errorHandler.buildDepError "Diff"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."dual-tree" or (errorHandler.buildDepError "dual-tree"))
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
            (hsPkgs."monoid-extras" or (errorHandler.buildDepError "monoid-extras"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."ghc-syb-utils" or (errorHandler.buildDepError "ghc-syb-utils"))
            (hsPkgs."ghc-mod" or (errorHandler.buildDepError "ghc-mod"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."silently" or (errorHandler.buildDepError "silently"))
            (hsPkgs."stringbuilder" or (errorHandler.buildDepError "stringbuilder"))
            (hsPkgs."rosezipper" or (errorHandler.buildDepError "rosezipper"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
            (hsPkgs."Strafunski-StrategyLib" or (errorHandler.buildDepError "Strafunski-StrategyLib"))
            (hsPkgs."syz" or (errorHandler.buildDepError "syz"))
            (hsPkgs."HaRe" or (errorHandler.buildDepError "HaRe"))
            ];
          buildable = true;
          };
        };
      };
    }