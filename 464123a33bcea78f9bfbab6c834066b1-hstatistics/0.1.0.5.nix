{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hstatistics";
          version = "0.1.0.5";
        };
        license = "LicenseRef-GPL";
        copyright = "(c) A.V.H. McPhail 2010";
        maintainer = "haskell.vivian.mcphail <at> gmail <dot> com";
        author = "Vivian McPhail";
        homepage = "http://code.haskell.org/hstatistics";
        url = "";
        synopsis = "Statistics";
        description = "Purely functional interface for statistics based on hmatrix and GSL";
        buildType = "Custom";
      };
      components = {
        hstatistics = {
          depends  = [
            hsPkgs.base
            hsPkgs.storable-complex
            hsPkgs.hmatrix
          ];
          libs = pkgs.lib.optional system.isOsx pkgs.gsl;
          frameworks = pkgs.lib.optional system.isOsx pkgs.Accelerate;
        };
      };
    }