{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "nvim-hs-contrib";
          version = "0.2.0";
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
        "nvim-hs-contrib" = {
          depends  = [
            hsPkgs.base
            hsPkgs.nvim-hs
            hsPkgs.ansi-wl-pprint
            hsPkgs.bytestring
            hsPkgs.data-default
            hsPkgs.directory
            hsPkgs.exceptions
            hsPkgs.filepath
            hsPkgs.messagepack
            hsPkgs.mtl
            hsPkgs.text
            hsPkgs.time
            hsPkgs.utf8-string
            hsPkgs.yaml
          ];
        };
        tests = {
          "hspec" = {
            depends  = [
              hsPkgs.base
              hsPkgs.nvim-hs
              hsPkgs.hspec
              hsPkgs.hspec-discover
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }