{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "phantom-state";
          version = "0.2.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "dhelta.diaz@gmail.com";
        author = "Daniel Díaz";
        homepage = "";
        url = "";
        synopsis = "Phantom State Transformer. Like State Monad, but without values.";
        description = "A monad transformer that mimics the State Monad Transformer from the\n<http://hackage.haskell.org/package/transformers transformers> package,\nbut dropping the values. In those cases that you want to use the State\nMonad but you only care about effects and how the state changes, use\nthis library to earn a plus of efficiency.";
        buildType = "Simple";
      };
      components = {
        "phantom-state" = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
          ];
        };
        benchmarks = {
          "phantom-state-bench" = {
            depends  = [
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.vector
              hsPkgs.phantom-state
              hsPkgs.transformers
            ];
          };
        };
      };
    }