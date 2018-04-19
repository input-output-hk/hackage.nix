{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "2.0";
        identifier = {
          name = "hexchat";
          version = "0.0.2.0";
        };
        license = "MIT";
        copyright = "(C) 2017 mniip";
        maintainer = "mniip@mniip.com";
        author = "mniip";
        homepage = "https://github.com/mniip/hexchat-haskell";
        url = "";
        synopsis = "Haskell scripting interface for HexChat";
        description = "This package builds a shared object ready for loading into HexChat, that will compile and interpret scripts written in Haskell; and also a Haskell library that said scripts should import and use to interface with HexChat.\n\nAt the moment the scripting interface is not finalized and may (and will) change in a future.\n\nAt the moment only Linux is supported.\n\nFor instructions on how to write a script, see the 'HexChat' module.\n\nThe plugin understands the classic @/load@, @/unload@, @/reload@ commands, as well as:\n\n> /hs load <filename>\n> /hs unload <filename>\n> /hs reload <filename>\n> /hs list\n\nTo automatically load the plugin symlink or copy @~\\/.cabal\\/lib\\/libhexchat-haskell.so@ (or @\\/usr\\/local\\/lib\\/libhexchat-haskell.so@) to @~\\/.config\\/hexchat\\/addons\\/@ (or @\\/usr\\/lib\\/hexchat\\/plugins\\/@).";
        buildType = "Simple";
      };
      components = {
        hexchat = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
          ];
        };
        foreignlibs = {
          hexchat-haskell = {
            depends  = [
              hsPkgs.base
              hsPkgs.deepseq
              hsPkgs.ghc-prim
              hsPkgs.ghc-paths
              hsPkgs.ghc
              hsPkgs.ghci
              hsPkgs.hexchat
            ];
          };
        };
      };
    }