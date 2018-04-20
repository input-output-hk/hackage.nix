{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "record-preprocessor";
          version = "0.1.0.1";
        };
        license = "MIT";
        copyright = "(c) 2015, Nikita Volkov";
        maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        homepage = "https://github.com/nikita-volkov/record-preprocessor";
        url = "";
        synopsis = "Compiler preprocessor introducing a syntactic extension for anonymous records";
        description = "This package provides an executable \"record-preprocessor\",\nwhich can be used as a compilation phase to add support for\nthe Anynonymous Records syntax.\n\nTo get a look at what syntax the preprocessor enables check out\n<http://hackage.haskell.org/package/record-preprocessor-0.1.0.1/src/demo/Main.hs the demo> and\n<http://hackage.haskell.org/package/record-preprocessor-0.1.0.1/src/record-preprocessor.cabal its configuration in the Cabal file>,\nwhich are both bundled with this package.";
        buildType = "Simple";
      };
      components = {
        exes = {
          record-preprocessor = {
            depends  = [
              hsPkgs.record-syntax
              hsPkgs.conversion
              hsPkgs.conversion-text
              hsPkgs.text
              hsPkgs.base-prelude
              hsPkgs.base
            ];
          };
        };
        benchmarks = {
          demo = {
            depends  = [
              hsPkgs.record
              hsPkgs.basic-lens
            ];
          };
        };
      };
    }