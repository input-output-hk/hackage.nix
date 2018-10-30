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
        name = "spatial-math";
        version = "0.3.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2012, Greg Horn";
      maintainer = "gregmainland@gmail.com";
      author = "Greg Horn";
      homepage = "";
      url = "";
      synopsis = "3d math including quaternions/euler angles/dcms and utility functions";
      description = "This is a port of my 'mathlib' C library: `https://github.com/ghorn/mathlib`";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ghc-prim)
          (hsPkgs.cereal)
          (hsPkgs.binary)
          (hsPkgs.linear)
          (hsPkgs.lens)
          (hsPkgs.TypeCompose)
        ];
      };
      tests = {
        "doctests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
          ];
        };
        "unit-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.spatial-math)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
          ];
        };
      };
    };
  }