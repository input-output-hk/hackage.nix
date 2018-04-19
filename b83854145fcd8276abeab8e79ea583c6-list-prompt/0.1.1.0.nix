{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      examples = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "list-prompt";
          version = "0.1.1.0";
        };
        license = "GPL-2.0-only";
        copyright = "(c) 2014 Pedro Tacla Yamada";
        maintainer = "tacla.yamada@gmail.com";
        author = "Pedro Tacla Yamada";
        homepage = "https://github.com/yamadapc/list-prompt.git";
        url = "";
        synopsis = "A simple list prompt UI for the terminal.";
        description = "See https://github.com/yamadapc/list-prompt";
        buildType = "Simple";
      };
      components = {
        list-prompt = {
          depends  = [
            hsPkgs.ansi-terminal
            hsPkgs.base
            hsPkgs.data-default
            hsPkgs.stm
            hsPkgs.terminal-size
            hsPkgs.vty
          ];
        };
        exes = {
          simple-demo = {
            depends  = [
              hsPkgs.ansi-terminal
              hsPkgs.base
              hsPkgs.data-default
              hsPkgs.list-prompt
              hsPkgs.stm
              hsPkgs.terminal-size
              hsPkgs.vty
            ];
          };
        };
        tests = {
          hspec = {
            depends  = [
              hsPkgs.ansi-terminal
              hsPkgs.base
              hsPkgs.data-default
              hsPkgs.hspec
              hsPkgs.list-prompt
              hsPkgs.stm
              hsPkgs.terminal-size
              hsPkgs.vty
            ];
          };
        };
      };
    }