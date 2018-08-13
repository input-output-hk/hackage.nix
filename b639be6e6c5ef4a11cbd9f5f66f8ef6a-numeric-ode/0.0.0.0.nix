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
      specVersion = "1.18";
      identifier = {
        name = "numeric-ode";
        version = "0.0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Alexander V Vershilov, Dominic Steinitz";
      maintainer = "dominic@steinitz.org";
      author = "Alexander V Vershilov, Dominic Steinitz";
      homepage = "https://github.com/qnikst/numeric-ode";
      url = "";
      synopsis = "Ode solvers";
      description = "Some ode solvers, e.g., Störmer-Verlet";
      buildType = "Simple";
    };
    components = {
      "numeric-ode" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.vector)
          (hsPkgs.parallel)
          (hsPkgs.parsec)
          (hsPkgs.template-haskell)
          (hsPkgs.linear)
          (hsPkgs.lens)
          (hsPkgs.primitive)
          (hsPkgs.text)
          (hsPkgs.protolude)
          (hsPkgs.mwc-random)
          (hsPkgs.mwc-probability)
          (hsPkgs.primitive)
          (hsPkgs.ad)
          (hsPkgs.reflection)
          (hsPkgs.tdigest)
          (hsPkgs.numhask)
          (hsPkgs.foldl)
        ];
      };
      exes = {
        "Kepler" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.numeric-ode)
            (hsPkgs.vector)
            (hsPkgs.vector-space)
            (hsPkgs.colour)
            (hsPkgs.linear)
            (hsPkgs.data-default-class)
            (hsPkgs.diagrams-lib)
            (hsPkgs.diagrams-cairo)
            (hsPkgs.Chart)
            (hsPkgs.Chart-cairo)
            (hsPkgs.data-accessor)
            (hsPkgs.diagrams-rasterific)
            (hsPkgs.diagrams-lib)
            (hsPkgs.JuicyPixels)
            (hsPkgs.plots)
            (hsPkgs.mtl)
          ];
        };
      };
    };
  }