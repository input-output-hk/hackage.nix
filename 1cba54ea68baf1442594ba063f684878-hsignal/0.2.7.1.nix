{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      openblas = false;
      onlygsl = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hsignal";
          version = "0.2.7.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) A.V.H. McPhail 2010, 2011, 2014, 2015";
        maintainer = "haskell.vivian.mcphail <at> gmail <dot> com";
        author = "Vivian McPhail";
        homepage = "http://code.haskell.org/hsignal";
        url = "";
        synopsis = "Signal processing and EEG data analysis";
        description = "Purely functional interface to signal processing based on hmatrix\n\nProvides data types for manipulating EEG data, including reading from BDF data format files\n\nThe vector type is Data.Vector.Storable from the 'vector' package.\n\nFeature requests, suggestions, and bug fixes welcome.";
        buildType = "Simple";
      };
      components = {
        "hsignal" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.array
            hsPkgs.bytestring
            hsPkgs.storable-complex
            hsPkgs.binary
            hsPkgs.hmatrix
            hsPkgs.hmatrix-gsl
            hsPkgs.hmatrix-gsl-stats
            hsPkgs.hstatistics
          ];
          libs = ((((if _flags.openblas
            then [ pkgs.openblas ]
            else [
              pkgs.blas
              pkgs.lapack
            ]) ++ pkgs.lib.optional system.isOsx pkgs.gsl) ++ pkgs.lib.optionals system.isFreebsd [
            pkgs.blas
            pkgs.lapack
            pkgs.gfortran
            pkgs.gsl
          ]) ++ pkgs.lib.optionals system.isWindows [
            pkgs.blas
            pkgs.lapack
            pkgs.gsl-0
          ]) ++ pkgs.lib.optional _flags.onlygsl pkgs.gsl;
          frameworks = pkgs.lib.optional system.isOsx pkgs.Accelerate;
          pkgconfig = pkgs.lib.optional (!_flags.onlygsl) pkgconfPkgs.gsl;
        };
      };
    }