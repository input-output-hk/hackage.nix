{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "data-stm32";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2018 Richard Marko";
        maintainer = "srk@48.io";
        author = "Richard Marko";
        homepage = "https://github.com/sorki/data-stm32#readme";
        url = "";
        synopsis = "ARM SVD and CubeMX XML parser and pretty printer for STM32 family";
        description = "ARM SVD and CubeMX XML parser and pretty printer for STM32 family";
        buildType = "Simple";
      };
      components = {
        data-stm32 = {
          depends  = [
            hsPkgs.ansi-wl-pprint
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.hxt
            hsPkgs.hxt-xpath
            hsPkgs.pretty-simple
            hsPkgs.text
            hsPkgs.time
          ];
        };
        exes = {
          mxmcu = {
            depends  = [
              hsPkgs.ansi-wl-pprint
              hsPkgs.attoparsec
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.data-stm32
              hsPkgs.hxt
              hsPkgs.hxt-xpath
              hsPkgs.pretty-simple
              hsPkgs.text
              hsPkgs.time
            ];
          };
          stm32-reference-pdf = {
            depends  = [
              hsPkgs.ansi-wl-pprint
              hsPkgs.attoparsec
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.data-stm32
              hsPkgs.hxt
              hsPkgs.hxt-xpath
              hsPkgs.pretty-simple
              hsPkgs.text
              hsPkgs.time
            ];
          };
          svdparse = {
            depends  = [
              hsPkgs.ansi-wl-pprint
              hsPkgs.attoparsec
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.data-stm32
              hsPkgs.hxt
              hsPkgs.hxt-xpath
              hsPkgs.pretty-simple
              hsPkgs.text
              hsPkgs.time
            ];
          };
        };
        tests = {
          data-cubemx-test = {
            depends  = [
              hsPkgs.ansi-wl-pprint
              hsPkgs.attoparsec
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.data-stm32
              hsPkgs.hxt
              hsPkgs.hxt-xpath
              hsPkgs.pretty-simple
              hsPkgs.text
              hsPkgs.time
            ];
          };
        };
      };
    }