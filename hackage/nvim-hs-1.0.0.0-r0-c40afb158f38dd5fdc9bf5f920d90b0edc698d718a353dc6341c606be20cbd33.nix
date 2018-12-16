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
      specVersion = "1.18";
      identifier = {
        name = "nvim-hs";
        version = "1.0.0.0";
      };
      license = "Apache-2.0";
      copyright = "Copyright 2017 Sebastian Witte <woozletoff@gmail.com>";
      maintainer = "woozletoff@gmail.com";
      author = "Sebastian Witte";
      homepage = "https://github.com/neovimhaskell/nvim-hs";
      url = "";
      synopsis = "Haskell plugin backend for neovim";
      description = "This package provides a plugin provider for neovim. It allows you to write\nplugins for one of the great editors of our time in the best programming\nlanguage of our time! ;-)\n\nYou should find all the documentation you need inside the \"Neovim\" module.\nMost other modules are considered internal, so don't be annoyed if using\nthings from there may break your code!\n\nThe following modules may also be of interest and they should not change\ntheir API: \"Neovim.Quickfix\"\n\nIf you want to write unit tests that interact with neovim, \"Neovim.Test\"\nprovides some useful functions for that.\n\nIf you are keen to debug /nvim-hs/ or a module you are writing, take a look\nat the \"Neovim.Debug\" module.\n\nIf you spot any errors or if you have great ideas, feel free to open an issue\non github.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.cereal-conduit)
          (hsPkgs.conduit)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.deepseq)
          (hsPkgs.directory)
          (hsPkgs.dyre)
          (hsPkgs.filepath)
          (hsPkgs.foreign-store)
          (hsPkgs.hslogger)
          (hsPkgs.messagepack)
          (hsPkgs.network)
          (hsPkgs.mtl)
          (hsPkgs.optparse-applicative)
          (hsPkgs.time-locale-compat)
          (hsPkgs.megaparsec)
          (hsPkgs.prettyprinter)
          (hsPkgs.prettyprinter-ansi-terminal)
          (hsPkgs.process)
          (hsPkgs.resourcet)
          (hsPkgs.setenv)
          (hsPkgs.stm)
          (hsPkgs.streaming-commons)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.unliftio)
          (hsPkgs.unliftio-core)
          (hsPkgs.utf8-string)
          (hsPkgs.void)
        ];
      };
      exes = {
        "nvim-hs" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.nvim-hs)
            (hsPkgs.data-default)
          ];
        };
      };
      tests = {
        "hspec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.nvim-hs)
            (hsPkgs.hspec)
            (hsPkgs.hspec-discover)
            (hsPkgs.QuickCheck)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.cereal-conduit)
            (hsPkgs.conduit)
            (hsPkgs.containers)
            (hsPkgs.data-default)
            (hsPkgs.directory)
            (hsPkgs.dyre)
            (hsPkgs.filepath)
            (hsPkgs.foreign-store)
            (hsPkgs.hslogger)
            (hsPkgs.mtl)
            (hsPkgs.messagepack)
            (hsPkgs.time-locale-compat)
            (hsPkgs.network)
            (hsPkgs.optparse-applicative)
            (hsPkgs.megaparsec)
            (hsPkgs.prettyprinter)
            (hsPkgs.prettyprinter-ansi-terminal)
            (hsPkgs.process)
            (hsPkgs.resourcet)
            (hsPkgs.setenv)
            (hsPkgs.stm)
            (hsPkgs.streaming-commons)
            (hsPkgs.text)
            (hsPkgs.template-haskell)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.transformers-base)
            (hsPkgs.unliftio)
            (hsPkgs.unliftio-core)
            (hsPkgs.utf8-string)
            (hsPkgs.HUnit)
          ];
        };
      };
    };
  }