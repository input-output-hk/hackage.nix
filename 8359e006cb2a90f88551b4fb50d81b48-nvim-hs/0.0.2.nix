{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "nvim-hs";
          version = "0.0.2";
        };
        license = "Apache-2.0";
        copyright = "Copyright (C) Sebastian Witte";
        maintainer = "woozletoff@gmail.com";
        author = "Sebastian Witte";
        homepage = "https://github.com/saep/nvim-hs";
        url = "";
        synopsis = "Haskell plugin backend for neovim";
        description = "This package provides a plugin provider for neovim. It allows you to write\nplugins for one of the great editors of our time in the best programming\nlanguage of our time! ;-)\n\nYou should find all the documentation you need inside the \"Neovim\" module. All\nother modules are considered internal, so don't be annoyed if using things\nfrom there may break your code.\n\nIf you spot any errors or if you have great ideas, feel free to open an issue\non github.";
        buildType = "Simple";
      };
      components = {
        "nvim-hs" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.cereal
            hsPkgs.cereal-conduit
            hsPkgs.conduit
            hsPkgs.conduit-extra
            hsPkgs.containers
            hsPkgs.data-default
            hsPkgs.directory
            hsPkgs.dyre
            hsPkgs.filepath
            hsPkgs.hslogger
            hsPkgs.messagepack
            hsPkgs.monad-control
            hsPkgs.network
            hsPkgs.lifted-base
            hsPkgs.mtl
            hsPkgs.optparse-applicative
            hsPkgs.parsec
            hsPkgs.process
            hsPkgs.resourcet
            hsPkgs.stm
            hsPkgs.streaming-commons
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.transformers-base
            hsPkgs.utf8-string
          ];
        };
        exes = {
          "nvim-hs" = {
            depends  = [
              hsPkgs.base
              hsPkgs.nvim-hs
              hsPkgs.data-default
            ];
          };
        };
        tests = {
          "hspec" = {
            depends  = [
              hsPkgs.base
              hsPkgs.nvim-hs
              hsPkgs.hspec
              hsPkgs.hspec-discover
              hsPkgs.QuickCheck
              hsPkgs.bytestring
              hsPkgs.cereal
              hsPkgs.cereal-conduit
              hsPkgs.conduit
              hsPkgs.conduit-extra
              hsPkgs.containers
              hsPkgs.data-default
              hsPkgs.directory
              hsPkgs.dyre
              hsPkgs.filepath
              hsPkgs.hslogger
              hsPkgs.lifted-base
              hsPkgs.mtl
              hsPkgs.messagepack
              hsPkgs.network
              hsPkgs.optparse-applicative
              hsPkgs.parsec
              hsPkgs.process
              hsPkgs.resourcet
              hsPkgs.stm
              hsPkgs.streaming-commons
              hsPkgs.text
              hsPkgs.template-haskell
              hsPkgs.time
              hsPkgs.transformers
              hsPkgs.utf8-string
              hsPkgs.HUnit
            ];
          };
        };
      };
    }