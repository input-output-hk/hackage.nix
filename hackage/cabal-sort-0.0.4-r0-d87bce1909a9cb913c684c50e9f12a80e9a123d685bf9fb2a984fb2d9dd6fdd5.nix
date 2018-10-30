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
      specVersion = "1.6";
      identifier = {
        name = "cabal-sort";
        version = "0.0.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "";
      url = "";
      synopsis = "Topologically sort cabal packages";
      description = "If you have a bunch of packages you may want to compile or recompile,\nthen you need an order of compilation that meets the dependencies.\nGiven a number of cabal package files,\nthis program reads all those files\nand emits them topologically sorted according to their dependencies.\nThis way you can compile many packages at once,\nsay if a very low-level package has changed.\n\nFor compiling a couple of packages from their local darcs repositories\nin the right order, you may run something like\n\n> for dir in `find . -name \"*.cabal\" | fgrep -v _darcs | xargs cabal-sort --info=dir`; do (cd \$dir && cabal install); done\n\nFor uploading a set of packages to Hackage in the right order\nyou may run\n\n> for dir in `find . -name \"*.cabal\" | fgrep -v _darcs | xargs cabal-sort --info=dir`; do (cd \$dir && rm dist/*.tar.gz && cabal sdist && cabal upload dist/*.tar.gz); done\n\nProblem 1: Given packages A, B, C,\nwhere C depends on B and B depends on A,\nand you call\n\n> cabal-sort C.cabal A.cabal\n\nthen the emitted order of packages may be wrong,\nbecause cabal-sort does not get to know the dependency of C on B.\nEven if the order is correct,\nB.cabal is missing in the output\nand thus the list of cabal files cannot immediately be used\nfor a sequence of cabal-install runs.\n\nProblem 2: We ignore flags and merge all dependencies.\nThis may lead to dependency cycles that cannot occur for any flag assignment.\n\nYou also have options @--parallel@ and @--makefile@\nthat support parallel compilation.\nThe first option is for manual parallelization\nand the second one allows you to compile parallelly using\n@make@'s @-j@/@--jobs@ option.\n\nThere is a second program called @ghc-pkg-dep@\nthat finds recursively all packages that a set of packages depends on.\nDuplicates are eliminated and the packages are given topologically sorted,\nsuch that you can use this for recompilation of the packages.\nThe packages must already be registered with @ghc-pkg@.\n\n> ghc-pkg-dep pkgA-0.1 pkgB-2.3 pkgC-0.1.2\n\nOn GHC versions before 7.0 ghc-pkg runs quite slowly.\nIn order to not get bored you may run the program with @--verbose=2@ option.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "cabal-sort" = {
          depends  = [
            (hsPkgs.Cabal)
            (hsPkgs.fgl)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.containers)
            (hsPkgs.explicit-exception)
            (hsPkgs.transformers)
            (hsPkgs.base)
          ];
        };
        "ghc-pkg-dep" = {
          depends  = [
            (hsPkgs.Cabal)
            (hsPkgs.process)
            (hsPkgs.containers)
            (hsPkgs.explicit-exception)
            (hsPkgs.utility-ht)
            (hsPkgs.transformers)
            (hsPkgs.bytestring)
            (hsPkgs.base)
          ];
        };
      };
    };
  }