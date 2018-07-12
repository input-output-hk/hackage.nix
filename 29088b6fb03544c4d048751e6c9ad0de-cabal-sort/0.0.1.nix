{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "cabal-sort";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
        author = "Henning Thielemann <haskell@henning-thielemann.de>";
        homepage = "";
        url = "";
        synopsis = "Topologically sort cabal packages";
        description = "If you have a bunch of packages you may want to compile or recompile,\nthen you need an order of compilation that meets the dependencies.\nGiven a number of cabal package files,\nthis program reads all those files\nand emits them topologically sorted according to their dependencies.\nThis way you can compile many packages at once,\nsay if a very low-level package has changed.\n\nFor compiling a couple of packages from their local darcs repositories\nin the right order, you may run something like\n\n> for dir in `find . -name \"*.cabal\" | fgrep -v _darcs | xargs cabal-sort --info=dir`; do (cd \$dir && cabal install); done\n\nFor uploading a set of packages to Hackage in the right order\nyou may run\n\n> for dir in `find . -name \"*.cabal\" | fgrep -v _darcs | xargs cabal-sort --info=dir`; do (cd \$dir && rm dist/*.tar.gz && cabal sdist && cabal upload dist/*.tar.gz); done\n\nProblem: Given packages A, B, C,\nwhere C depends on B and B depends on A,\nand you call\n\n> cabal-sort C.cabal A.cabal\n\nthen the emitted order of packages may be wrong,\nbecause cabal-sort does not get to know the dependency of C on B.\nEven if the order is correct,\nB.cabal is missing in the output\nand thus the list of cabal files cannot immediately be used\nfor a sequence of cabal-install runs.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "cabal-sort" = {
            depends  = [
              hsPkgs.Cabal
              hsPkgs.fgl
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.containers
              hsPkgs.explicit-exception
              hsPkgs.transformers
              hsPkgs.base
            ];
          };
        };
      };
    }