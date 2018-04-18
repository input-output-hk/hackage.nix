{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hblas";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "carter at wellposed dot com";
        author = "Carter Tazio Schonwald";
        homepage = "";
        url = "";
        synopsis = "BLAS and Lapack bindings for OpenBLAS";
        description = "User friendly, simple bindings to BLAS and Lapack, favoring OpenBLAS as the substrate.";
        buildType = "Custom";
      };
      components = {
        hblas = {
          depends  = [
            hsPkgs.base
            hsPkgs.storable-complex
            hsPkgs.vector
            hsPkgs.primitive
          ];
          libs = optionals system.isWindows [
            pkgs.blas
            pkgs.lapack
          ] ++ optionals (!system.isWindows && !system.isOsx) [
            pkgs.blas
            pkgs.lapack
          ];
          frameworks = pkgs.lib.optional system.isOsx pkgs.Accelerate;
        };
        tests = {
          simple-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.vector
              hsPkgs.hblas
            ];
          };
        };
      };
    }