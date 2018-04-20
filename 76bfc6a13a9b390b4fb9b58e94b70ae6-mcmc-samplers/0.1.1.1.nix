{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "mcmc-samplers";
          version = "0.1.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "pravnar@indiana.edu";
        author = "Praveen Narayanan";
        homepage = "";
        url = "";
        synopsis = "Combinators for MCMC sampling";
        description = "A library of combinators to build transition kernels, proposal distributions, target distributions, and stream operations for MCMC sampling.";
        buildType = "Simple";
      };
      components = {
        mcmc-samplers = {
          depends  = [
            hsPkgs.base
            hsPkgs.mwc-random
            hsPkgs.primitive
            hsPkgs.hmatrix
            hsPkgs.statistics
            hsPkgs.containers
            hsPkgs.hakaru
          ];
        };
      };
    }