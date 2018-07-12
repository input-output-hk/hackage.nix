{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "nvim-hs";
          version = "0.1.0";
        };
        license = "Apache-2.0";
        copyright = "Copyright 2015 Sebastian Witte <woozletoff@gmail.com>";
        maintainer = "woozletoff@gmail.com";
        author = "Sebastian Witte";
        homepage = "https://github.com/neovimhaskell/nvim-hs";
        url = "";
        synopsis = "Haskell plugin backend for neovim";
        description = "This package provides a plugin provider for neovim. It allows you to write\nplugins for one of the great editors of our time in the best programming\nlanguage of our time! ;-)\n\nYou should find all the documentation you need inside the \"Neovim\" module.\nMost other modules are considered internal, so don't be annoyed if using\nthings from there may break your code!\n\nThe following modules may also be of interest and they should not change\ntheir API: \"Neovim.Quickfix\"\n\nIf you want to write unit tests that interact with neovim, \"Neovim.Test\"\nprovides some useful functions for that.\n\nIf you are keen to debug /nvim-hs/ or a module you are writing, take a look\nat the \"Neovim.Debug\" module.\n\nIf you spot any errors or if you have great ideas, feel free to open an issue\non github.";
        buildType = "Simple";
      };
      components = {
        "nvim-hs" = {
          depends  = [
            hsPkgs.base
            hsPkgs.ansi-wl-pprint
            hsPkgs.bytestring
            hsPkgs.cereal
            hsPkgs.cereal-conduit
            hsPkgs.conduit
            hsPkgs.conduit-extra
            hsPkgs.containers
            hsPkgs.data-default
            hsPkgs.directory
            hsPkgs.dyre
            hsPkgs.exceptions
            hsPkgs.filepath
            hsPkgs.foreign-store
            hsPkgs.hslogger
            hsPkgs.messagepack
            hsPkgs.monad-control
            hsPkgs.network
            hsPkgs.lifted-base
            hsPkgs.mtl
            hsPkgs.optparse-applicative
            hsPkgs.time-locale-compat
            hsPkgs.parsec
            hsPkgs.process
            hsPkgs.resourcet
            hsPkgs.setenv
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
              hsPkgs.ansi-wl-pprint
              hsPkgs.bytestring
              hsPkgs.cereal
              hsPkgs.cereal-conduit
              hsPkgs.conduit
              hsPkgs.conduit-extra
              hsPkgs.containers
              hsPkgs.data-default
              hsPkgs.directory
              hsPkgs.dyre
              hsPkgs.exceptions
              hsPkgs.filepath
              hsPkgs.foreign-store
              hsPkgs.hslogger
              hsPkgs.lifted-base
              hsPkgs.mtl
              hsPkgs.messagepack
              hsPkgs.time-locale-compat
              hsPkgs.network
              hsPkgs.optparse-applicative
              hsPkgs.parsec
              hsPkgs.process
              hsPkgs.resourcet
              hsPkgs.setenv
              hsPkgs.stm
              hsPkgs.streaming-commons
              hsPkgs.text
              hsPkgs.template-haskell
              hsPkgs.time
              hsPkgs.transformers
              hsPkgs.transformers-base
              hsPkgs.utf8-string
              hsPkgs.HUnit
            ];
          };
        };
      };
    }