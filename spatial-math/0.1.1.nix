{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "spatial-math";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "gregmainland@gmail.com";
        author = "Greg Horn";
        homepage = "";
        url = "";
        synopsis = "3d math including quaternions/euler angles/dcms and utility functions";
        description = "This is a port of my 'mathlib' C library: https://github.com/ghorn/mathlib";
        buildType = "Simple";
      };
      components = {
        spatial-math = {
          depends  = [
            hsPkgs.base
            hsPkgs.hmatrix
          ];
        };
      };
    }