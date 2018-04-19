{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      examples = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ascii-progress";
          version = "0.3.0.1";
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
            hsPkgs.concurrent-output
            hsPkgs.async
            hsPkgs.base
            hsPkgs.data-default
            hsPkgs.time
          ];
        };
        exes = {
          example = {
            depends  = optionals (!(!_flags.examples)) [
              hsPkgs.concurrent-output
              hsPkgs.async
              hsPkgs.base
              hsPkgs.data-default
              hsPkgs.time
            ];
          };
          download-example = {
            depends  = optionals (!(!_flags.examples)) [
              hsPkgs.HTTP
              hsPkgs.concurrent-output
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
            depends  = optionals (!(!_flags.examples)) [
              hsPkgs.concurrent-output
              hsPkgs.async
              hsPkgs.base
              hsPkgs.data-default
              hsPkgs.time
            ];
          };
          crazy-multi-example = {
            depends  = optionals (!(!_flags.examples)) [
              hsPkgs.concurrent-output
              hsPkgs.async
              hsPkgs.base
              hsPkgs.data-default
              hsPkgs.random
              hsPkgs.time
            ];
          };
        };
        tests = {
          hspec = {
            depends  = [
              hsPkgs.concurrent-output
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