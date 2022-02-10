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
      specVersion = "1.6";
      identifier = { name = "cabal-sort"; version = "0.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "";
      url = "";
      synopsis = "Topologically sort cabal packages";
      description = "If you have a bunch of packages you may want to compile or recompile,\nthen you need an order of compilation that meets the dependencies.\nGiven a number of cabal package files,\nthis program reads all those files\nand emits them topologically sorted according to their dependencies.\nThis way you can compile many packages at once,\nsay if a very low-level package has changed.\n\nFor compiling a couple of packages from their local darcs repositories\nin the right order, you may run something like\n\n> for dir in `find . -name \"*.cabal\" | fgrep -v _darcs | xargs cabal-sort --info=dir`; do (cd $dir && cabal install); done\n\nFor uploading a set of packages to Hackage in the right order\nyou may run\n\n> for dir in `find . -name \"*.cabal\" | fgrep -v _darcs | xargs cabal-sort --info=dir`; do (cd $dir && rm dist/*.tar.gz && cabal sdist && cabal upload dist/*.tar.gz); done\n\nProblem 1: Given packages A, B, C,\nwhere C depends on B and B depends on A,\nand you call\n\n> cabal-sort C.cabal A.cabal\n\nthen the emitted order of packages may be wrong,\nbecause cabal-sort does not get to know the dependency of C on B.\nEven if the order is correct,\nB.cabal is missing in the output\nand thus the list of cabal files cannot immediately be used\nfor a sequence of cabal-install runs.\n\nProblem 2: We ignore flags and merge all dependencies.\nThis may lead to dependency cycles that cannot occur for any flag assignment.\n\nThere is a second program called @ghc-pkg-dep@\nthat finds recursively all packages that a set of packages depends on.\nDuplicates are eliminated and the packages are given topologically sorted,\nsuch that you can use this for recompilation of the packages.\n\n> ghc-pkg-dep pkgA-0.1 pkgB-2.3 pkgC-0.1.2\n\nUnfortunately ghc-pkg runs quite slowly.\nIn order to not get bored you may run the program with @--verbose=2@ option.\nMaybe there is a way to query the complete GHC package database at once.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "cabal-sort" = {
          depends = [
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."explicit-exception" or (errorHandler.buildDepError "explicit-exception"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = true;
          };
        "ghc-pkg-dep" = {
          depends = [
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."explicit-exception" or (errorHandler.buildDepError "explicit-exception"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = true;
          };
        };
      };
    }