{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "dynobud";
        version = "1.8.0.0";
      };
      license = "LGPL-3.0-only";
      copyright = "(c) Greg Horn 2013-2015";
      maintainer = "gregmainland@gmail.com";
      author = "Greg Horn";
      homepage = "";
      url = "";
      synopsis = "your dynamic optimization buddy";
      description = "See readme at <http://www.github.com/ghorn/dynobud http://www.github.com/ghorn/dynobud>";
      buildType = "Simple";
    };
    components = {
      "dynobud" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.casadi-bindings-core)
          (hsPkgs.casadi-bindings)
          (hsPkgs.data-default-class)
          (hsPkgs.jacobi-roots)
          (hsPkgs.spatial-math)
          (hsPkgs.vector)
          (hsPkgs.vector-binary-instances)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.hmatrix)
          (hsPkgs.hmatrix-gsl)
          (hsPkgs.linear)
          (hsPkgs.reflection)
          (hsPkgs.aeson)
          (hsPkgs.binary)
          (hsPkgs.cereal)
          (hsPkgs.distributive)
          (hsPkgs.process)
          (hsPkgs.Plot-ho-matic)
          (hsPkgs.generic-accessors)
          (hsPkgs.time)
          (hsPkgs.directory)
        ];
      };
      exes = {
        "nlp-solver" = {
          depends  = [
            (hsPkgs.dynobud)
            (hsPkgs.base)
            (hsPkgs.casadi-bindings)
          ];
        };
        "toy-ocp" = {
          depends  = [
            (hsPkgs.dynobud)
            (hsPkgs.base)
          ];
        };
        "multiple_shooting" = {
          depends  = [
            (hsPkgs.dynobud)
            (hsPkgs.base)
            (hsPkgs.casadi-bindings)
            (hsPkgs.vector)
            (hsPkgs.linear)
            (hsPkgs.Chart)
            (hsPkgs.Chart-gtk)
            (hsPkgs.lens)
            (hsPkgs.colour)
            (hsPkgs.data-default-class)
          ];
        };
        "sofa-viz-2000" = {
          depends  = [
            (hsPkgs.dynobud)
            (hsPkgs.base)
            (hsPkgs.not-gloss)
            (hsPkgs.stm)
            (hsPkgs.containers)
            (hsPkgs.cereal)
            (hsPkgs.linear)
            (hsPkgs.bytestring)
            (hsPkgs.zeromq4-haskell)
            (hsPkgs.vector)
          ];
        };
        "sofa-expand-o-matic" = {
          depends  = [
            (hsPkgs.dynobud)
            (hsPkgs.vector)
            (hsPkgs.casadi-bindings-core)
            (hsPkgs.zeromq4-haskell)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.linear)
            (hsPkgs.base)
          ];
        };
        "homotopy" = {
          depends  = [
            (hsPkgs.dynobud)
            (hsPkgs.vector)
            (hsPkgs.casadi-bindings)
            (hsPkgs.base)
          ];
        };
        "vec" = {
          depends  = [
            (hsPkgs.dynobud)
            (hsPkgs.vector)
            (hsPkgs.base)
          ];
        };
        "parallel-map" = {
          depends  = [
            (hsPkgs.dynobud)
            (hsPkgs.containers)
            (hsPkgs.casadi-bindings)
            (hsPkgs.time)
            (hsPkgs.base)
          ];
        };
        "spring" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.dynobud)
            (hsPkgs.casadi-bindings)
            (hsPkgs.vector)
            (hsPkgs.generic-accessors)
            (hsPkgs.bytestring)
            (hsPkgs.zeromq4-haskell)
            (hsPkgs.cereal)
          ];
        };
        "rocket" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.dynobud)
            (hsPkgs.casadi-bindings)
            (hsPkgs.containers)
            (hsPkgs.vector)
            (hsPkgs.generic-accessors)
            (hsPkgs.bytestring)
            (hsPkgs.zeromq4-haskell)
            (hsPkgs.cereal)
          ];
        };
        "nlpDsl" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.dynobud)
            (hsPkgs.casadi-bindings)
            (hsPkgs.vector)
            (hsPkgs.linear)
            (hsPkgs.containers)
            (hsPkgs.unordered-containers)
            (hsPkgs.lens)
            (hsPkgs.mtl)
          ];
        };
        "easy-nlp" = {
          depends  = [
            (hsPkgs.dynobud)
            (hsPkgs.vector)
            (hsPkgs.base)
          ];
        };
        "basic-nlp" = {
          depends  = [
            (hsPkgs.dynobud)
            (hsPkgs.vector)
            (hsPkgs.casadi-bindings)
            (hsPkgs.base)
          ];
        };
        "beginner-qp" = {
          depends  = [
            (hsPkgs.dynobud)
            (hsPkgs.base)
          ];
        };
        "dae-pendulum" = {
          depends  = [
            (hsPkgs.dynobud)
            (hsPkgs.base)
            (hsPkgs.generic-accessors)
            (hsPkgs.bytestring)
            (hsPkgs.zeromq4-haskell)
            (hsPkgs.cereal)
            (hsPkgs.vector)
          ];
        };
        "glider" = {
          depends  = [
            (hsPkgs.dynobud)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.linear)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.vector)
            (hsPkgs.generic-accessors)
            (hsPkgs.zeromq4-haskell)
          ];
        };
        "sailboat" = {
          depends  = [
            (hsPkgs.dynobud)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.linear)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.vector)
            (hsPkgs.semigroups)
            (hsPkgs.generic-accessors)
            (hsPkgs.zeromq4-haskell)
          ];
        };
        "dynoplot" = {
          depends  = [
            (hsPkgs.dynobud)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.vector)
            (hsPkgs.cereal)
            (hsPkgs.bytestring)
            (hsPkgs.zeromq4-haskell)
            (hsPkgs.Plot-ho-matic)
            (hsPkgs.cmdargs)
          ];
        };
        "quadrature-test" = {
          depends  = [
            (hsPkgs.dynobud)
            (hsPkgs.base)
            (hsPkgs.generic-accessors)
            (hsPkgs.bytestring)
            (hsPkgs.zeromq4-haskell)
            (hsPkgs.cereal)
            (hsPkgs.vector)
          ];
        };
      };
      tests = {
        "unit-tests" = {
          depends  = [
            (hsPkgs.dynobud)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.containers)
            (hsPkgs.vector)
            (hsPkgs.linear)
            (hsPkgs.binary)
            (hsPkgs.cereal)
            (hsPkgs.casadi-bindings)
            (hsPkgs.hmatrix)
            (hsPkgs.hmatrix-gsl)
            (hsPkgs.base)
          ];
        };
        "doctests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
          ];
        };
      };
    };
  }