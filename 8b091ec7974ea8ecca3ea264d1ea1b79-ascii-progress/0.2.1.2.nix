{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      examples = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ascii-progress";
          version = "0.2.1.2";
        };
        license = "MIT";
        copyright = "(c) 2015 Pedro Tacla Yamada";
        maintainer = "tacla.yamada@gmail.com";
        author = "Pedro Tacla Yamada";
        homepage = "https://github.com/yamadapc/haskell-ascii-progress";
        url = "";
        synopsis = "A simple progress bar for the console.";
        description = "A simple Haskell progress bar for the console. Heavily borrows from TJ\nHolowaychuk's Node.JS project\n<https://github.com/tj/node-progress progress>\n\n<https://github.com/yamadapc/haskell-ascii-progress github>";
        buildType = "Simple";
      };
      components = {
        ascii-progress = {
          depends  = [
            hsPkgs.ansi-terminal
            hsPkgs.async
            hsPkgs.base
            hsPkgs.data-default
            hsPkgs.time
          ];
        };
        exes = {
          example = {
            depends  = [
              hsPkgs.ansi-terminal
              hsPkgs.async
              hsPkgs.base
              hsPkgs.data-default
              hsPkgs.time
            ];
          };
          download-example = {
            depends  = [
              hsPkgs.HTTP
              hsPkgs.ansi-terminal
              hsPkgs.async
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.data-default
              hsPkgs.time
              hsPkgs.conduit
              hsPkgs.http-conduit
              hsPkgs.http-types
              hsPkgs.transformers
            ];
          };
          multi-example = {
            depends  = [
              hsPkgs.ansi-terminal
              hsPkgs.async
              hsPkgs.base
              hsPkgs.data-default
              hsPkgs.time
            ];
          };
        };
        tests = {
          hspec = {
            depends  = [
              hsPkgs.ansi-terminal
              hsPkgs.async
              hsPkgs.base
              hsPkgs.data-default
              hsPkgs.hspec
              hsPkgs.time
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }