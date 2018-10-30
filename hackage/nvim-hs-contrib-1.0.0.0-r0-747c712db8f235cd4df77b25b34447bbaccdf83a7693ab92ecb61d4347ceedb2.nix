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
        version = "1.0.0.0";
      };
      license = "Apache-2.0";
      copyright = "Copyright (C) Sebastian Witte";
      maintainer = "woozletoff@gmail.com";
      author = "Sebastian Witte";
      homepage = "https://github.com/neovimhaskell/nvim-hs-contrib";
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
          (hsPkgs.prettyprinter)
          (hsPkgs.prettyprinter-ansi-terminal)
          (hsPkgs.bytestring)
          (hsPkgs.data-default)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.messagepack)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.utf8-string)
          (hsPkgs.yaml)
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
          ];
        };
      };
    };
  }