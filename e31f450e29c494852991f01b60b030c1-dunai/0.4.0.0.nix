{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      test-hlint = false;
      test-doc-coverage = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "dunai";
          version = "0.4.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "ivan.perez@keera.co.uk";
        author = "Ivan Perez, Manuel Bärenz";
        homepage = "https://github.com/ivanperez-keera/dunai";
        url = "";
        synopsis = "Generalised reactive framework supporting classic, arrowized and monadic FRP.";
        description = "Dunai is a DSL for strongly-typed CPS-based composable transformations.\n\nDunai is based on a concept of Monadic Stream Functions (MSFs). MSFs are\ntransformations defined by a function @unMSF :: MSF m a b -> a -> m (b, MSF m a b)@\nthat executes one step of a simulation, and produces an output in a monadic\ncontext, and a continuation to be used for future steps.\n\nMSFs are a generalisation of the implementation mechanism used by Yampa,\nWormholes and other FRP and reactive implementations.\n\nWhen combined with different monads, they produce interesting effects. For\nexample, when combined with the @Maybe@ monad, they become transformations\nthat may stop producing outputs (and continuations). The @Either@ monad gives\nrise to MSFs that end with a result (akin to Tasks in Yampa, and Monadic\nFRP).\n\nFlattening, that is, going from some structure @MSF (t m) a b@ to @MSF m a b@\nfor a specific transformer @t@ often gives rise to known FRP constructs. For\ninstance, flattening with @EitherT@ gives rise to switching, and flattening\nwith @ListT@ gives rise to parallelism with broadcasting.\n\nMSFs can be used to implement many FRP variants, including Arrowized FRP,\nClassic FRP, and plain reactive programming. Arrowized and applicative\nsyntax are both supported.\n\nFor a very detailed introduction to MSFs, see:\n<http://dl.acm.org/citation.cfm?id=2976010>\n(mirror: <http://www.cs.nott.ac.uk/~psxip1/#FRPRefactored>).";
        buildType = "Simple";
      };
      components = {
        dunai = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.transformers-base
            hsPkgs.MonadRandom
          ];
        };
        tests = {
          hlint = {
            depends  = pkgs.lib.optionals (!(!_flags.test-hlint)) [
              hsPkgs.base
              hsPkgs.hlint
            ];
          };
          haddock-coverage = {
            depends  = pkgs.lib.optionals (!(!_flags.test-doc-coverage)) [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.process
              hsPkgs.regex-posix
            ];
          };
        };
      };
    }