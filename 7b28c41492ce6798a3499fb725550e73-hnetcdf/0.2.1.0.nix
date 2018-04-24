{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hnetcdf";
          version = "0.2.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (2013) Ian Ross";
        maintainer = "ian@skybluetrades.net";
        author = "Ian Ross";
        homepage = "https://github.com/ian-ross/hnetcdf";
        url = "";
        synopsis = "Haskell NetCDF library";
        description = "Bindings to the Unidata NetCDF library, along with a higher-level\nHaskell interface that attempts to provide container polymorphic\ndata access (initially just Storable vectors and Repa arrays).";
        buildType = "Simple";
      };
      components = {
        hnetcdf = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.either
            hsPkgs.errors
            hsPkgs.filepath
            hsPkgs.hmatrix
            hsPkgs.repa
            hsPkgs.transformers
            hsPkgs.vector
          ];
          libs = [ pkgs.netcdf ];
          build-tools = [ hsPkgs.c2hs ];
        };
        tests = {
          test-raw-metadata = {
            depends  = [
              hsPkgs.hnetcdf
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.vector
              hsPkgs.repa
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
              hsPkgs.HUnit
              hsPkgs.QuickCheck
            ];
            libs = [ pkgs.netcdf ];
          };
          test-raw-get-put = {
            depends  = [
              hsPkgs.hnetcdf
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.vector
              hsPkgs.repa
              hsPkgs.directory
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
              hsPkgs.HUnit
              hsPkgs.QuickCheck
            ];
            libs = [ pkgs.netcdf ];
          };
          test-raw-attributes = {
            depends  = [
              hsPkgs.hnetcdf
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.vector
              hsPkgs.repa
              hsPkgs.directory
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
              hsPkgs.HUnit
              hsPkgs.QuickCheck
            ];
            libs = [ pkgs.netcdf ];
          };
          test-get = {
            depends  = [
              hsPkgs.hnetcdf
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.errors
              hsPkgs.hmatrix
              hsPkgs.repa
              hsPkgs.vector
              hsPkgs.directory
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
              hsPkgs.HUnit
              hsPkgs.QuickCheck
            ];
            libs = [ pkgs.netcdf ];
          };
          test-put = {
            depends  = [
              hsPkgs.hnetcdf
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.errors
              hsPkgs.vector
              hsPkgs.directory
            ];
            libs = [ pkgs.netcdf ];
          };
        };
      };
    }