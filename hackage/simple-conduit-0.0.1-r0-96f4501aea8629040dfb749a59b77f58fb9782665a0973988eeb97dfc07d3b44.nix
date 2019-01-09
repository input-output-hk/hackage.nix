{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "simple-conduit"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "johnw@newartisans.com";
      author = "John Wiegley";
      homepage = "http://github.com/jwiegley/simple-conduit";
      url = "";
      synopsis = "A simple streaming library based on composing monadic folds.";
      description = "@simple-conduit@ follows a similar UI to the more capable @conduit@ library, but reduces the scope of what it can solve donw to what can be expressed by chaining monadic folds that allow for early termination.  This allows for more predictable resource management behavior, at the cost of not allowing scenarios that @conduit@ is better designed.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bifunctors)
          (hsPkgs.bytestring)
          (hsPkgs.chunked-data)
          (hsPkgs.containers)
          (hsPkgs.either)
          (hsPkgs.exceptions)
          (hsPkgs.filepath)
          (hsPkgs.lifted-async)
          (hsPkgs.lifted-base)
          (hsPkgs.mmorph)
          (hsPkgs.monad-control)
          (hsPkgs.mono-traversable)
          (hsPkgs.mtl)
          (hsPkgs.mwc-random)
          (hsPkgs.primitive)
          (hsPkgs.streaming-commons)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.vector)
          (hsPkgs.void)
          ];
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs.simple-conduit)
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.transformers)
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