{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "dsmc";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "dima@dzhus.org";
        author = "Dmitry Dzhus";
        homepage = "";
        url = "";
        synopsis = "DSMC library for rarefied gas dynamics";
        description = "Direct Simulation Monte Carlo is the numerical\nused to model the behavior of rarefied gas flows.\nThis implementation supports complex bodies\ndefined using Constructive Solid Geometry, using\nuniform grids and ray-casting. Specular, diffuse\nand CLL gas-surface interaction models are\nprovided. Macroscopic parameters of number\ndensity, absolute velocity, pressure and\ntranslational temperature are obtained as the\nresult of the simulation. The library employs\nparallelism on all steps of the DSMC algorithm.\nSee the dsmc-tools package for command-line\ninterfaces to the library.";
        buildType = "Simple";
      };
      components = {
        dsmc = {
          depends  = [
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.entropy
            hsPkgs.hslogger
            hsPkgs.mwc-random
            hsPkgs.parallel
            hsPkgs.primitive
            hsPkgs.repa
            hsPkgs.strict
            hsPkgs.transformers
            hsPkgs.vector
          ];
        };
      };
    }