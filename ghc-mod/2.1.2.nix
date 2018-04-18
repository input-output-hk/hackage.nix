{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ghc-mod";
          version = "2.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Kazu Yamamoto <kazu@iij.ad.jp>";
        author = "Kazu Yamamoto <kazu@iij.ad.jp>";
        homepage = "http://www.mew.org/~kazu/proj/ghc-mod/";
        url = "";
        synopsis = "Happy Haskell Programming";
        description = "The ghc-mod command is a backend command to enrich\nHaskell programming on editors including\nEmacs, Vim, and Sublime.\nThe ghc-mod command is based on ghc-mod library\nwhich is a wrapper of GHC API.\nThis package includes the ghc-mod command,\nthe ghc-mod library, and Emacs front-end\n(for historical reasons).\nFor more information, please see its home page.";
        buildType = "Simple";
      };
      components = {
        ghc-mod = {
          depends  = [
            hsPkgs.base
            hsPkgs.Cabal
            hsPkgs.containers
            hsPkgs.convertible
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.ghc
            hsPkgs.ghc-paths
            hsPkgs.ghc-syb-utils
            hsPkgs.hlint
            hsPkgs.io-choice
            hsPkgs.old-time
            hsPkgs.process
            hsPkgs.syb
            hsPkgs.time
            hsPkgs.transformers
          ];
        };
        exes = {
          ghc-mod = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.ghc
              hsPkgs.ghc-mod
            ];
          };
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.Cabal
              hsPkgs.containers
              hsPkgs.convertible
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.ghc
              hsPkgs.ghc-paths
              hsPkgs.ghc-syb-utils
              hsPkgs.hlint
              hsPkgs.io-choice
              hsPkgs.old-time
              hsPkgs.process
              hsPkgs.syb
              hsPkgs.time
              hsPkgs.transformers
              hsPkgs.hspec
            ];
          };
        };
      };
    }