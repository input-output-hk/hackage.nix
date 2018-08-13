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
      specVersion = "1.2";
      identifier = {
        name = "reactivity";
        version = "0.3.2.3";
      };
      license = "LicenseRef-GPL";
      copyright = "(c) 2016 by James Candy";
      maintainer = "info@alkalisoftware.net";
      author = "James Candy";
      homepage = "http://www.alkalisoftware.net/Reactivity.html";
      url = "http://code.haskell.org/reactivity";
      synopsis = "An alternate implementation of push-pull FRP.";
      description = "An alternate implementation of push-pull FRP. This is based on the Reactive package (http://haskell.org/haskellwiki/reactive) (and the sources have been made available in accordance with the GPL [license] of that package).\n\nThe two types of reactive signals in this package reflect different tradeoffs. Choose Event when you need maximal speed, or to embed I/O effects in your programs. Choose MeasurementWrapper for precision.";
      buildType = "Simple";
    };
    components = {
      "reactivity" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.time)
          (hsPkgs.random)
          (hsPkgs.bmp)
          (hsPkgs.monad-loops)
          (hsPkgs.monads-tf)
          (hsPkgs.transformers)
          (hsPkgs.bytestring)
          (hsPkgs.array)
          (hsPkgs.ghc-prim)
          (hsPkgs.containers)
          (hsPkgs.parallel)
          (hsPkgs.list-extras)
          (hsPkgs.exceptions)
        ];
      };
    };
  }