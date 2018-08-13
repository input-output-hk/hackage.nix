{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "spatial-math";
        version = "0.2.0.1";
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
      "spatial-math" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ghc-prim)
          (hsPkgs.linear)
        ];
      };
      tests = {
        "doctests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
          ];
        };
      };
    };
  }