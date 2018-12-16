{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "simple-conduit";
        version = "0.5.0";
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
    };
  }