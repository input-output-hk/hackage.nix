{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "stack-run";
          version = "0.1.1.3";
        };
        license = "MIT";
        copyright = "Copyright (c) 2016 Pedro Tacla Yamada";
        maintainer = "tacla.yamada@gmail.com";
        author = "Pedro Tacla Yamada";
        homepage = "https://github.com/yamadapc/stack-run";
        url = "";
        synopsis = "An equivalent to cabal run for stack.";
        description = "Finds the project root, compiles your code and runs the\nfirst or set default executable. It's a shorthand for\n@stack build && stack run executable@, much like\n@cabal run@.";
        buildType = "Simple";
      };
      components = {
        exes = {
          stack-run = {
            depends  = [
              hsPkgs.Cabal
              hsPkgs.terminal-size
              hsPkgs.vty
              hsPkgs.stm
              hsPkgs.MissingH
              hsPkgs.ansi-terminal
              hsPkgs.async
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.conduit
              hsPkgs.conduit-extra
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.projectroot
              hsPkgs.time
            ];
          };
        };
      };
    }