{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      doctest = true;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "record-syntax";
          version = "0.1.0.1";
        };
        license = "MIT";
        copyright = "(c) 2015, Nikita Volkov";
        maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        homepage = "https://github.com/nikita-volkov/record-syntax";
        url = "";
        synopsis = "A library for parsing and processing the Haskell syntax sprinkled with anonymous records";
        description = "";
        buildType = "Custom";
      };
      components = {
        record-syntax = {
          depends  = [
            hsPkgs.record
            hsPkgs.haskell-src-exts
            hsPkgs.parsec
            hsPkgs.conversion
            hsPkgs.conversion-text
            hsPkgs.text
            hsPkgs.template-haskell
            hsPkgs.transformers
            hsPkgs.base-prelude
            hsPkgs.base
          ];
        };
        tests = {
          doctest = {
            depends  = [
              hsPkgs.doctest
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.base-prelude
              hsPkgs.base
            ];
          };
          hspec = {
            depends  = [
              hsPkgs.record
              hsPkgs.record-syntax
              hsPkgs.hspec
              hsPkgs.base-prelude
              hsPkgs.base
            ];
          };
        };
        benchmarks = {
          demo = {
            depends  = [
              hsPkgs.record
              hsPkgs.record-syntax
              hsPkgs.conversion
              hsPkgs.conversion-text
              hsPkgs.text
              hsPkgs.base-prelude
            ];
          };
        };
      };
    }