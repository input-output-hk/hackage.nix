{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "repa-examples";
          version = "3.2.5.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Ben Lippmeier <benl@ouroborus.net>";
        author = "The DPH Team";
        homepage = "http://repa.ouroborus.net";
        url = "";
        synopsis = "Examples using the Repa array library.";
        description = "Examples using the Repa array library.";
        buildType = "Simple";
      };
      components = {
        exes = {
          repa-canny = {
            depends  = [
              hsPkgs.base
              hsPkgs.repa
              hsPkgs.repa-algorithms
            ];
          };
          repa-mmult = {
            depends  = [
              hsPkgs.base
              hsPkgs.random
              hsPkgs.repa
              hsPkgs.repa-io
              hsPkgs.repa-algorithms
            ];
          };
          repa-laplace = {
            depends  = [
              hsPkgs.base
              hsPkgs.repa
              hsPkgs.repa-io
              hsPkgs.template-haskell
            ];
          };
          repa-fft2d = {
            depends  = [
              hsPkgs.base
              hsPkgs.repa
              hsPkgs.repa-algorithms
              hsPkgs.repa-io
            ];
          };
          repa-fft2d-highpass = {
            depends  = [
              hsPkgs.base
              hsPkgs.repa
              hsPkgs.repa-algorithms
              hsPkgs.repa-io
            ];
          };
          repa-fft3d-highpass = {
            depends  = [
              hsPkgs.base
              hsPkgs.repa
              hsPkgs.repa-algorithms
            ];
          };
          repa-blur = {
            depends  = [
              hsPkgs.base
              hsPkgs.vector
              hsPkgs.repa
              hsPkgs.repa-algorithms
            ];
          };
          repa-sobel = {
            depends  = [
              hsPkgs.base
              hsPkgs.repa
              hsPkgs.repa-algorithms
            ];
          };
          repa-volume = {
            depends  = [
              hsPkgs.base
              hsPkgs.repa
              hsPkgs.repa-io
            ];
          };
          repa-unit-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.repa
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }