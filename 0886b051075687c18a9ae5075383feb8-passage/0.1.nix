{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "passage";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2011 Galois, Inc. and Battelle Memorial Institute";
        maintainer = "Chad Scherrer";
        author = "Chad Scherrer (Pacific Northwest National Laboratory),\nLevent Erkok (Galois, Inc),\nIavor Diatchki (Galois, Inc),\nMatthew Sottile (Galois, Inc)";
        homepage = "";
        url = "";
        synopsis = "Parallel code generation for hierarchical Bayesian modeling.";
        description = "Passage is a PArallel SAmpler GEnerator. The user specifies a hierarchical\nBayesian model and data using the Passage EDSL, and Passage generates code\nto sample the posterior distribution in parallel.\n\nCurrently Passage targets C with OpenMP threads.";
        buildType = "Simple";
      };
      components = {
        "passage" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.monadLib
            hsPkgs.pretty
            hsPkgs.process
            hsPkgs.primitive
            hsPkgs.filepath
            hsPkgs.directory
            hsPkgs.random
            hsPkgs.GraphSCC
            hsPkgs.mwc-random
            hsPkgs.array
          ];
        };
      };
    }