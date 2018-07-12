{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "constrained-monads";
          version = "0.5.0.0";
        };
        license = "MIT";
        copyright = "2016 Donnacha Oisín Kidney";
        maintainer = "mail@doisinkidney.com";
        author = "Donnacha Oisín Kidney";
        homepage = "https://github.com/oisdk/constrained-monads#readme";
        url = "";
        synopsis = "Typeclasses and instances for monads with constraints.";
        description = "A library for monads with constraints over the types they contain. This allows set, etc to conform to the monad class. It is structured as a prelude replacement: everything that doesn't conflict with the new definitions of 'Functor', 'Monad', etc is reexported.";
        buildType = "Simple";
      };
      components = {
        "constrained-monads" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.transformers
            hsPkgs.free
            hsPkgs.deepseq
          ];
        };
        tests = {
          "constrained-monads-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.constrained-monads
              hsPkgs.doctest
              hsPkgs.QuickCheck
              hsPkgs.containers
              hsPkgs.transformers
            ];
          };
        };
        benchmarks = {
          "bench" = {
            depends  = [
              hsPkgs.base
              hsPkgs.constrained-monads
              hsPkgs.criterion
              hsPkgs.containers
              hsPkgs.smallcheck
              hsPkgs.QuickCheck
              hsPkgs.vector
              hsPkgs.transformers
              hsPkgs.nat-sized-numbers
              hsPkgs.deepseq
            ];
          };
        };
      };
    }