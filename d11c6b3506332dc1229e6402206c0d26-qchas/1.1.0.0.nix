{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "qchas";
          version = "1.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2018 Mihai Sebastian Ardelean";
        maintainer = "ardeleanasm@gmail.com";
        author = "Mihai Sebastian Ardelean";
        homepage = "https://github.com/ardeleanasm/qchas#readme";
        url = "";
        synopsis = "A library for implementing Quantum Algorithms";
        description = "A library useful for implementing Quantum Algorithms. It contains definitions of Quantum Gates, Qubits.";
        buildType = "Simple";
      };
      components = {
        qchas = {
          depends  = [
            hsPkgs.base
            hsPkgs.hmatrix
            hsPkgs.linear
            hsPkgs.random
          ];
        };
        exes = {
          qchas-exe = {
            depends  = [
              hsPkgs.base
              hsPkgs.hmatrix
              hsPkgs.qchas
            ];
          };
        };
        tests = {
          qchas-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.hmatrix
              hsPkgs.linear
              hsPkgs.qchas
            ];
          };
        };
      };
    }