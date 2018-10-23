{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "mutable-iter";
        version = "0.6";
      };
      license = "BSD-3-Clause";
      copyright = "John W. Lato, 2010";
      maintainer = "jwlato@gmail.com";
      author = "John W. Lato";
      homepage = "http://jwlato.webfactional.com/haskell/mutable-iter";
      url = "";
      synopsis = "iteratees based upon mutable buffers";
      description = "Provides iteratees backed by mutable buffers.  This enables iteratees to run without any extra memory allocations.";
      buildType = "Simple";
    };
    components = {
      "mutable-iter" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.iteratee)
          (hsPkgs.MonadCatchIO-transformers)
          (hsPkgs.transformers)
          (hsPkgs.vector)
        ];
      };
    };
  }