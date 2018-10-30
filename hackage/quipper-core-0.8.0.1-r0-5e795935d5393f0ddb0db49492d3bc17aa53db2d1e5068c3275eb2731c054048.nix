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
        name = "quipper-core";
        version = "0.8.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2012-2013 Applied Communication Sciences.";
      maintainer = "leonardo.taglialegne@gmail.com";
      author = "Applied Communication Sciences";
      homepage = "http://www.mathstat.dal.ca/~selinger/quipper/";
      url = "";
      synopsis = "An embedded, scalable functional programming language for quantum computing.";
      description = "Quipper is an embedded, scalable functional programming language for quantum computing. It provides, among other things:\n\n* A high-level circuit description language. This includes gate-by-gate descriptions of circuit fragments, as well as powerful operators for assembling and manipulating circuits.\n\n* A monadic semantics, allowing for a mixture of procedural and declarative programming styles.\n\n* Built-in facilities for automatic synthesis of reversible quantum circuits, including from classical code.\n\n* Support for hierarchical circuits.\n\n* Extensible quantum data types.\n\n* Programmable circuit transformers.\n\n* Support for three execution phases: compile time, circuit generation time, and circuit execution time. A dynamic lifting operation to allow circuit generation to be parametric on values generated at circuit execution time.\n\n* Extensive libraries of quantum functions, including: libraries for quantum integer and fixed-point arithmetic; the Quantum Fourier transform; an efficient Qram implementation; libraries for simulation of pseudo-classical circuits, Stabilizer circuits, and arbitrary circuits; libraries for exact and approximate decomposition of circuits into specific gate sets.\n\nThis package contains all of quipper, except for the rendering part, which has been separated into the quipper-rendering package to reduce dependencies.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.random)
          (hsPkgs.containers)
          (hsPkgs.template-haskell)
          (hsPkgs.mtl)
          (hsPkgs.primes)
        ];
      };
    };
  }