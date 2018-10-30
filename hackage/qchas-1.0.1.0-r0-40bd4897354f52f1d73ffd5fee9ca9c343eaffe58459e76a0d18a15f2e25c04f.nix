{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "qchas";
        version = "1.0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Mihai Sebastian Ardelean";
      maintainer = "ardeleanasm@gmail.com";
      author = "Mihai Sebastian Ardelean";
      homepage = "https://github.com/ardeleanasm/qchas#readme";
      url = "";
      synopsis = "A library for implementing Quantum Algorithms";
      description = "A library useful for implementing Quantum Algorithms. It contains definitions of Quantum Gates, Qubits.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hmatrix)
          (hsPkgs.random)
        ];
      };
      tests = {
        "qchas-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.hmatrix)
            (hsPkgs.qchas)
          ];
        };
      };
    };
  }