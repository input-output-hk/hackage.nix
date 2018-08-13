{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      splitbase = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "adaptive-tuple";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "John W. Lato, jwlato@gmail.com";
      author = "John W. Lato, jwlato@gmail.com";
      homepage = "http://inmachina.net/~jwlato/haskell/";
      url = "";
      synopsis = "Self-optimizing tuple types";
      description = "Self optimizing tuple types.\n\nAdaptive tuples are tuple types in which the number of elements is\ndetermined at run-time.  These structures are designed to combine\nthe space-efficiency of tuples with the size flexibility of lists.\n\nAdaptive tuples provide lazy and strict, unpacked data structures\nfor all tuple sizes from 0 to 20 elements.  Adaptive tuples of more than\n20 elements are allowed, however they are stored in an ordinary list.";
      buildType = "Simple";
    };
    components = {
      "adaptive-tuple" = {
        depends  = [
          (hsPkgs.haskell98)
          (hsPkgs.type-level)
          (hsPkgs.template-haskell)
        ] ++ [ (hsPkgs.base) ];
      };
    };
  }