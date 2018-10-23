{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "stateful-mtl";
        version = "1.0.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "wasserman.louis@gmail.com";
      author = "Louis Wasserman";
      homepage = "";
      url = "";
      synopsis = "Stateful monad transformers with pure evaluation semantics.";
      description = "Stateful monad transformers with pure evaluation semantics, useful for monadically pulling out implementation details of array manipulation and operations in the ST monad.  Includes typeclasses suitable for guaranteeing single-threaded monad behavior, avoiding previously encountered problems with ST monad transformers.  This package remains in a state of flux, so please notify the author about features you like or dislike.";
      buildType = "Simple";
    };
    components = {
      "stateful-mtl" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.ghc-prim)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.MaybeT)
        ];
      };
    };
  }