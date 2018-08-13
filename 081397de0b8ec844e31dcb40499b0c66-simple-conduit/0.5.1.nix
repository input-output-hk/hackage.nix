{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "simple-conduit";
        version = "0.5.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "johnw@newartisans.com";
      author = "John Wiegley";
      homepage = "http://github.com/jwiegley/simple-conduit";
      url = "";
      synopsis = "A simple streaming I/O library based on monadic folds";
      description = "@simple-conduit@ follows a similar UI to the more capable @conduit@ library,\nbut reduces the scope of what it can solve down to what can be expressed by\nchaining monadic folds that allow for early termination.  This allows for\nmore predictable resource management behavior, at the cost of not allowing\nscenarios that @conduit@ is better designed.";
      buildType = "Simple";
    };
    components = {
      "simple-conduit" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bifunctors)
          (hsPkgs.bytestring)
          (hsPkgs.chunked-data)
          (hsPkgs.containers)
          (hsPkgs.either)
          (hsPkgs.exceptions)
          (hsPkgs.filepath)
          (hsPkgs.free)
          (hsPkgs.lifted-async)
          (hsPkgs.lifted-base)
          (hsPkgs.mmorph)
          (hsPkgs.monad-control)
          (hsPkgs.mono-traversable)
          (hsPkgs.mtl)
          (hsPkgs.mwc-random)
          (hsPkgs.primitive)
          (hsPkgs.semigroups)
          (hsPkgs.stm)
          (hsPkgs.streaming-commons)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.vector)
        ];
      };
      benchmarks = {
        "bench" = {
          depends  = [
            (hsPkgs.simple-conduit)
            (hsPkgs.base)
            (hsPkgs.vector)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.transformers)
            (hsPkgs.lifted-async)
            (hsPkgs.stm)
            (hsPkgs.foldl)
            (hsPkgs.transformers-base)
            (hsPkgs.primitive)
            (hsPkgs.chunked-data)
            (hsPkgs.CC-delcont)
            (hsPkgs.bytestring)
            (hsPkgs.mono-traversable)
            (hsPkgs.streaming-commons)
            (hsPkgs.filepath)
            (hsPkgs.mwc-random)
            (hsPkgs.lifted-base)
            (hsPkgs.monad-control)
            (hsPkgs.either)
            (hsPkgs.exceptions)
            (hsPkgs.free)
            (hsPkgs.mmorph)
            (hsPkgs.bifunctors)
            (hsPkgs.semigroups)
            (hsPkgs.mtl)
            (hsPkgs.void)
            (hsPkgs.containers)
            (hsPkgs.text)
            (hsPkgs.criterion)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.conduit-combinators)
          ];
        };
      };
    };
  }