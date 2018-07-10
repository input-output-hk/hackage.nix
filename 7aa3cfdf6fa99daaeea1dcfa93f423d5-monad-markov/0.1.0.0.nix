{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "monad-markov";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "Arran D. Stewart 2018";
        maintainer = "maintainer@arranstewart.info";
        author = "Arran D. Stewart";
        homepage = "https://github.com/arranstewart/monad-markov";
        url = "";
        synopsis = "Markov process monad";
        description = "A monad transformer providing a monad in which computations have\naccess to state and a probabilistic transition function.\nThis can be used to model Markov chains.\n\nA type class is provided with one operation, \"nextState\",\nwhich transitions to the next state.\n\nThe transformer is built on top of MonadRandom\n(https://hackage.haskell.org/package/MonadRandom).";
        buildType = "Simple";
      };
      components = {
        monad-markov = {
          depends  = [
            hsPkgs.MonadRandom
            hsPkgs.base
            hsPkgs.base-compat
            hsPkgs.mtl
            hsPkgs.random
            hsPkgs.transformers
          ];
        };
      };
    }