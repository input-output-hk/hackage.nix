{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "goal-simulation";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "sokolo@mis.mpg.de";
        author = "Sacha Sokoloski";
        homepage = "";
        url = "";
        synopsis = "Mealy based simulation tools";
        description = "";
        buildType = "Simple";
      };
      components = {
        goal-simulation = {
          depends  = [
            hsPkgs.base
            hsPkgs.goal-core
            hsPkgs.goal-geometry
            hsPkgs.goal-probability
            hsPkgs.machines
            hsPkgs.vector
            hsPkgs.hmatrix
            hsPkgs.cairo
            hsPkgs.gtk
            hsPkgs.clock
          ];
        };
        exes = {
          rk4 = {
            depends  = [
              hsPkgs.base
              hsPkgs.goal-core
              hsPkgs.goal-geometry
              hsPkgs.goal-simulation
              hsPkgs.vector
            ];
          };
          markov-chain = {
            depends  = [
              hsPkgs.base
              hsPkgs.goal-core
              hsPkgs.goal-geometry
              hsPkgs.goal-probability
              hsPkgs.vector
              hsPkgs.goal-simulation
              hsPkgs.hmatrix
            ];
          };
          ito-process = {
            depends  = [
              hsPkgs.base
              hsPkgs.goal-core
              hsPkgs.goal-geometry
              hsPkgs.goal-probability
              hsPkgs.vector
              hsPkgs.goal-simulation
              hsPkgs.hmatrix
            ];
          };
          pendulum-vector-field = {
            depends  = [
              hsPkgs.base
              hsPkgs.goal-core
              hsPkgs.goal-geometry
              hsPkgs.goal-probability
              hsPkgs.goal-simulation
              hsPkgs.vector
            ];
          };
          pendulum-simulation = {
            depends  = [
              hsPkgs.base
              hsPkgs.goal-core
              hsPkgs.goal-geometry
              hsPkgs.goal-probability
              hsPkgs.goal-simulation
              hsPkgs.vector
            ];
          };
          pendulum-filter-histogram = {
            depends  = [
              hsPkgs.base
              hsPkgs.goal-core
              hsPkgs.goal-geometry
              hsPkgs.goal-probability
              hsPkgs.goal-simulation
              hsPkgs.vector
              hsPkgs.directory
            ];
          };
          pendulum-filter-simulation = {
            depends  = [
              hsPkgs.base
              hsPkgs.goal-core
              hsPkgs.goal-geometry
              hsPkgs.goal-probability
              hsPkgs.goal-simulation
              hsPkgs.vector
              hsPkgs.directory
            ];
          };
          pendulum-filter-train = {
            depends  = [
              hsPkgs.base
              hsPkgs.goal-core
              hsPkgs.goal-geometry
              hsPkgs.goal-probability
              hsPkgs.goal-simulation
              hsPkgs.vector
              hsPkgs.directory
            ];
          };
          pendulum-filter-code = {
            depends  = [
              hsPkgs.base
              hsPkgs.goal-core
              hsPkgs.goal-geometry
              hsPkgs.goal-probability
              hsPkgs.goal-simulation
              hsPkgs.vector
              hsPkgs.directory
              hsPkgs.mtl
            ];
          };
        };
      };
    }