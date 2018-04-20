{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hsignal";
          version = "0.1.0.5";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "haskell.vivian.mcphail <at> gmail <dot> com";
        author = "Vivian McPhail";
        homepage = "http://code.haskell.org/hsignal";
        url = "";
        synopsis = "Signal processing";
        description = "Purely functional interface to signal processing based on hmatrix\nprovides data types for manipulating EEG data,\nincluding reading from BDF";
        buildType = "Custom";
      };
      components = {
        hsignal = {
          depends  = [
            hsPkgs.base
            hsPkgs.storable-complex
            hsPkgs.haskell98
            hsPkgs.mtl
            hsPkgs.bytestring
            hsPkgs.hmatrix
            hsPkgs.hstatistics
            hsPkgs.array
            hsPkgs.ghc-binary
          ];
          libs = pkgs.lib.optional system.isOsx pkgs.gsl;
          frameworks = pkgs.lib.optional system.isOsx pkgs.Accelerate;
        };
      };
    }