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
      specVersion = "1.10";
      identifier = {
        name = "nvim-hs-contrib";
        version = "0.0.6";
      };
      license = "Apache-2.0";
      copyright = "Copyright (C) Sebastian Witte";
      maintainer = "woozletoff@gmail.com";
      author = "Sebastian Witte";
      homepage = "https://github.com/neovimhaskell/nvim-hs";
      url = "";
      synopsis = "Haskell plugin backend for neovim";
      description = "Library for nvim-hs.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.nvim-hs)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.bytestring)
          (hsPkgs.data-default)
          (hsPkgs.directory)
          (hsPkgs.exceptions)
          (hsPkgs.messagepack)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.process)
          (hsPkgs.resourcet)
          (hsPkgs.setenv)
          (hsPkgs.stm)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.utf8-string)
        ];
      };
      tests = {
        "hspec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.nvim-hs)
            (hsPkgs.hspec)
            (hsPkgs.hspec-discover)
            (hsPkgs.QuickCheck)
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.bytestring)
            (hsPkgs.data-default)
            (hsPkgs.exceptions)
            (hsPkgs.messagepack)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.process)
            (hsPkgs.resourcet)
            (hsPkgs.setenv)
            (hsPkgs.stm)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.transformers-base)
            (hsPkgs.utf8-string)
          ];
        };
      };
    };
  }