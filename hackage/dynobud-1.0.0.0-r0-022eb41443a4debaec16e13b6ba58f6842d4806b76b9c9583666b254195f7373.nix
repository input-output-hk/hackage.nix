{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "dynobud";
        version = "1.0.0.0";
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
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.vector)
          (hsPkgs.data-default)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.jacobi-roots)
          (hsPkgs.hmatrix)
          (hsPkgs.unordered-containers)
          (hsPkgs.casadi-bindings-internal)
          (hsPkgs.casadi-bindings-core)
          (hsPkgs.casadi-bindings)
          (hsPkgs.transformers)
          (hsPkgs.primitive)
          (hsPkgs.ghc-prim)
          (hsPkgs.linear)
          (hsPkgs.spatial-math)
          (hsPkgs.tagged)
          (hsPkgs.reflection)
          (hsPkgs.lens)
          (hsPkgs.cereal)
          (hsPkgs.glib)
          (hsPkgs.time)
          (hsPkgs.stm)
          (hsPkgs.gtk)
          (hsPkgs.Chart-cairo)
          (hsPkgs.cairo)
          (hsPkgs.Chart)
          (hsPkgs.data-default-class)
          (hsPkgs.distributive)
          (hsPkgs.text)
          (hsPkgs.process)
        ];
      };
      exes = {
        "multiple_shooting" = {
          depends  = [
            (hsPkgs.dynobud)
            (hsPkgs.base)
            (hsPkgs.vector)
            (hsPkgs.linear)
            (hsPkgs.Chart)
            (hsPkgs.Chart-gtk)
            (hsPkgs.lens)
            (hsPkgs.colour)
            (hsPkgs.data-default-class)
          ];
        };
        "plotSofa" = {
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
        "sofaTime" = {
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
        "ocpMonad" = {
          depends  = [
            (hsPkgs.dynobud)
            (hsPkgs.vector)
            (hsPkgs.base)
            (hsPkgs.zeromq4-haskell)
            (hsPkgs.cereal)
            (hsPkgs.bytestring)
          ];
        };
        "rocket" = {
          depends  = [
            (hsPkgs.dynobud)
            (hsPkgs.vector)
            (hsPkgs.base)
            (hsPkgs.zeromq4-haskell)
            (hsPkgs.cereal)
            (hsPkgs.bytestring)
          ];
        };
        "staticExample" = {
          depends  = [
            (hsPkgs.dynobud)
            (hsPkgs.vector)
            (hsPkgs.base)
          ];
        };
        "basic" = {
          depends  = [
            (hsPkgs.dynobud)
            (hsPkgs.vector)
            (hsPkgs.base)
          ];
        };
        "basicJ" = {
          depends  = [
            (hsPkgs.dynobud)
            (hsPkgs.vector)
            (hsPkgs.base)
          ];
        };
        "daeColl" = {
          depends  = [
            (hsPkgs.dynobud)
            (hsPkgs.base)
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
            (hsPkgs.cmdargs)
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
            (hsPkgs.vector)
            (hsPkgs.linear)
            (hsPkgs.casadi-bindings)
            (hsPkgs.hmatrix)
            (hsPkgs.base)
          ];
        };
      };
    };
  }