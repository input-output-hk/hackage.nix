{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      examples = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "clingo";
          version = "0.2.0.0";
        };
        license = "MIT";
        copyright = "2017 Paul Ogris";
        maintainer = "paul@tsahyt.com";
        author = "Paul Ogris";
        homepage = "https://github.com/tsahyt/clingo-haskell#readme";
        url = "";
        synopsis = "Haskell bindings to the Clingo ASP solver";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        clingo = {
          depends  = [
            hsPkgs.base
            hsPkgs.bifunctors
            hsPkgs.transformers
            hsPkgs.mtl
            hsPkgs.exceptions
            hsPkgs.text
            hsPkgs.wl-pprint-text
            hsPkgs.deepseq
            hsPkgs.StateVar
            hsPkgs.hashable
          ];
          libs = [ pkgs.clingo ];
        };
        exes = {
          version = {
            depends  = optionals _flags.examples [
              hsPkgs.base
              hsPkgs.clingo
            ];
          };
          dot-propagator = {
            depends  = optionals _flags.examples [
              hsPkgs.base
              hsPkgs.clingo
              hsPkgs.text
            ];
          };
          control = {
            depends  = optionals _flags.examples [
              hsPkgs.base
              hsPkgs.clingo
              hsPkgs.text
            ];
          };
          configuration = {
            depends  = optionals _flags.examples [
              hsPkgs.base
              hsPkgs.clingo
              hsPkgs.text
              hsPkgs.StateVar
            ];
          };
          theory-atoms = {
            depends  = optionals _flags.examples [
              hsPkgs.base
              hsPkgs.clingo
              hsPkgs.text
            ];
          };
          symbolic-atoms = {
            depends  = optionals _flags.examples [
              hsPkgs.base
              hsPkgs.clingo
              hsPkgs.text
            ];
          };
          ast = {
            depends  = optionals _flags.examples [
              hsPkgs.base
              hsPkgs.clingo
              hsPkgs.text
            ];
          };
          backend = {
            depends  = optionals _flags.examples [
              hsPkgs.base
              hsPkgs.clingo
              hsPkgs.text
            ];
          };
          model = {
            depends  = optionals _flags.examples [
              hsPkgs.base
              hsPkgs.clingo
              hsPkgs.text
            ];
          };
          solve-async = {
            depends  = optionals _flags.examples [
              hsPkgs.base
              hsPkgs.clingo
              hsPkgs.text
              hsPkgs.monad-loops
              hsPkgs.MonadRandom
            ];
          };
          statistics = {
            depends  = optionals _flags.examples [
              hsPkgs.base
              hsPkgs.clingo
              hsPkgs.text
              hsPkgs.wl-pprint-text
              hsPkgs.StateVar
            ];
          };
          propagator = {
            depends  = optionals _flags.examples [
              hsPkgs.base
              hsPkgs.clingo
              hsPkgs.text
              hsPkgs.containers
              hsPkgs.transformers
            ];
          };
        };
      };
    }