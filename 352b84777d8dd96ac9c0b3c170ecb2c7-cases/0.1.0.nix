{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "cases";
          version = "0.1.0";
        };
        license = "MIT";
        copyright = "(c) 2014, Nikita Volkov";
        maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        homepage = "https://github.com/nikita-volkov/cases";
        url = "";
        synopsis = "A converter for spinal, snake and camel case";
        description = "A parser-based converter library for spinal, snake and camel case.";
        buildType = "Simple";
      };
      components = {
        cases = {
          depends  = [
            hsPkgs.attoparsec
            hsPkgs.text
            hsPkgs.mtl
            hsPkgs.loch-th
            hsPkgs.placeholders
            hsPkgs.base
          ];
        };
        tests = {
          api-tests = {
            depends  = [
              hsPkgs.cases
              hsPkgs.QuickCheck
              hsPkgs.HUnit
              hsPkgs.HTF
              hsPkgs.text
              hsPkgs.loch-th
              hsPkgs.placeholders
              hsPkgs.base
            ];
          };
        };
        benchmarks = {
          benchmark = {
            depends  = [
              hsPkgs.cases
              hsPkgs.mwc-random
              hsPkgs.criterion-plus
              hsPkgs.text
              hsPkgs.loch-th
              hsPkgs.placeholders
              hsPkgs.base
            ];
          };
        };
      };
    }