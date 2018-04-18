{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      examples = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "questioner";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "(c) 2014 Pedro Tacla Yamada";
        maintainer = "tacla.yamada@gmail.com";
        author = "Pedro Tacla Yamada";
        homepage = "https://github.com/yamadapc/haskell-questioner.git";
        url = "";
        synopsis = "A package for prompting values from the command-line.";
        description = "This is still being developed";
        buildType = "Simple";
      };
      components = {
        questioner = {
          depends  = [
            hsPkgs.base
            hsPkgs.ansi-terminal
            hsPkgs.terminal-size
            hsPkgs.readline
          ];
        };
        exes = {
          questioner-list-prompt = {
            depends  = [
              hsPkgs.base
              hsPkgs.questioner
            ];
          };
          questioner-checkbox-prompt = {
            depends  = [
              hsPkgs.base
              hsPkgs.questioner
            ];
          };
          questioner-spinner = {
            depends  = [
              hsPkgs.base
              hsPkgs.questioner
            ];
          };
          questioner-progressbar = {
            depends  = [
              hsPkgs.base
              hsPkgs.questioner
            ];
          };
        };
      };
    }