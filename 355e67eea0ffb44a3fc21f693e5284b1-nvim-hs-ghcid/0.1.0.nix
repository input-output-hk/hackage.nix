{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "nvim-hs-ghcid";
          version = "0.1.0";
        };
        license = "Apache-2.0";
        copyright = "Sebastian Witte <woozletoff@gmail.com>";
        maintainer = "woozletoff@gmail.com";
        author = "Sebastian Witte";
        homepage = "https://github.com/saep/nvim-hs-ghcid";
        url = "";
        synopsis = "Neovim plugin that runs ghcid to update the quickfix list";
        description = "This plugin uses the nvim-hs plugin backend for neovim and\nfills the quickfix list on file-saves with the errors and\nwarnings that ghcid determines.\n\nThe only limitation for this tool is that it needs a .cabal\nfile to work.\n\nThis plugin provides 3 commands:\n\n@:GhcidStart@ will prompt you for the configuration you\nwant to use. It should guess a reasonable option based on\nthe files present in your project directory and so you will\njust have to press enter all the time. If you provide a\nbang, these questions will not be asked.\n\n@:GhcidStop@ stops the current ghcid process.\n\n@:GhcidRestart@ combines the two previous commands.\n\nSimply import the @plugin@ definition from \"Neovim.Ghcid\"\nand add it to your plugin list.";
        buildType = "Simple";
      };
      components = {
        nvim-hs-ghcid = {
          depends  = [
            hsPkgs.base
            hsPkgs.nvim-hs
            hsPkgs.nvim-hs-contrib
            hsPkgs.containers
            hsPkgs.yaml
            hsPkgs.ghcid
            hsPkgs.resourcet
            hsPkgs.bytestring
            hsPkgs.directory
            hsPkgs.filepath
          ];
        };
      };
    }