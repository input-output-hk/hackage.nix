{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      gui = true;
      ekg = true;
      codespeed = false;
      llvm-cpu = true;
      llvm-ptx = true;
      smvm = true;
      crystal = true;
      tunnel = true;
      canny = true;
      mandelbrot = true;
      fluid = true;
      nbody = true;
      smoothlife = true;
      hashcat = true;
      fft = true;
      pagerank = true;
      ray = true;
      kmeans = true;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "accelerate-examples";
          version = "1.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Trevor L. McDonell <tmcdonell@cse.unsw.edu.au>";
        author = "The Accelerate Team";
        homepage = "https://github.com/AccelerateHS/accelerate-examples";
        url = "";
        synopsis = "Examples using the Accelerate library";
        description = "This package demonstrates a number of computation kernels and applications\nshowcasing the /Accelerate/ language and associated backend implementations.\nIt is also used for performance and regression testing.\n\nRefer to the main /Accelerate/ package for more information:\n<http://hackage.haskell.org/package/accelerate>\n";
        buildType = "Simple";
      };
      components = {
        accelerate-examples = {
          depends  = (([
            hsPkgs.base
            hsPkgs.accelerate
            hsPkgs.ansi-wl-pprint
            hsPkgs.containers
            hsPkgs.criterion
            hsPkgs.directory
            hsPkgs.fclabels
            hsPkgs.HUnit
            hsPkgs.linear
            hsPkgs.mwc-random
            hsPkgs.QuickCheck
            hsPkgs.test-framework
            hsPkgs.test-framework-hunit
            hsPkgs.test-framework-quickcheck2
          ] ++ pkgs.lib.optional _flags.llvm-cpu hsPkgs.accelerate-llvm-native) ++ pkgs.lib.optional _flags.llvm-ptx hsPkgs.accelerate-llvm-ptx) ++ optionals _flags.codespeed [
            hsPkgs.aeson
            hsPkgs.bytestring
            hsPkgs.HTTP
            hsPkgs.http-types
            hsPkgs.network
            hsPkgs.process
            hsPkgs.statistics
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.time
          ];
        };
        exes = {
          accelerate-smvm = {
            depends  = optionals (!(!_flags.smvm)) [
              hsPkgs.base
              hsPkgs.accelerate
              hsPkgs.accelerate-examples
              hsPkgs.accelerate-io
              hsPkgs.fclabels
              hsPkgs.matrix-market-attoparsec
              hsPkgs.mwc-random
              hsPkgs.scientific
              hsPkgs.vector
              hsPkgs.vector-algorithms
            ];
          };
          accelerate-crystal = {
            depends  = optionals (!(!_flags.crystal)) [
              hsPkgs.base
              hsPkgs.accelerate
              hsPkgs.accelerate-examples
              hsPkgs.colour-accelerate
              hsPkgs.fclabels
              hsPkgs.gloss-raster-accelerate
            ];
          };
          accelerate-tunnel = {
            depends  = optionals (!(!_flags.tunnel)) [
              hsPkgs.base
              hsPkgs.accelerate
              hsPkgs.accelerate-examples
              hsPkgs.fclabels
              hsPkgs.gloss-raster-accelerate
              hsPkgs.lens-accelerate
              hsPkgs.linear-accelerate
            ];
          };
          accelerate-canny = {
            depends  = optionals (!(!_flags.canny)) [
              hsPkgs.base
              hsPkgs.accelerate
              hsPkgs.accelerate-examples
              hsPkgs.accelerate-io
              hsPkgs.colour-accelerate
              hsPkgs.fclabels
              hsPkgs.repa
              hsPkgs.repa-io
              hsPkgs.vector
            ];
          };
          accelerate-mandelbrot = {
            depends  = optionals (!(!_flags.mandelbrot)) [
              hsPkgs.base
              hsPkgs.accelerate
              hsPkgs.accelerate-examples
              hsPkgs.accelerate-io
              hsPkgs.colour-accelerate
              hsPkgs.fclabels
              hsPkgs.gloss
              hsPkgs.gloss-accelerate
            ];
          };
          accelerate-fluid = {
            depends  = optionals (!(!_flags.fluid)) [
              hsPkgs.base
              hsPkgs.accelerate
              hsPkgs.accelerate-examples
              hsPkgs.accelerate-io
              hsPkgs.bmp
              hsPkgs.colour-accelerate
              hsPkgs.fclabels
              hsPkgs.gloss
              hsPkgs.gloss-rendering
            ];
          };
          accelerate-nbody = {
            depends  = optionals (!(!_flags.nbody)) [
              hsPkgs.base
              hsPkgs.accelerate
              hsPkgs.accelerate-examples
              hsPkgs.fclabels
              hsPkgs.gloss
              hsPkgs.lens-accelerate
              hsPkgs.linear-accelerate
              hsPkgs.mwc-random
            ];
          };
          accelerate-smoothlife = {
            depends  = optionals (!(!_flags.smoothlife)) [
              hsPkgs.base
              hsPkgs.accelerate
              hsPkgs.accelerate-examples
              hsPkgs.accelerate-fft
              hsPkgs.colour-accelerate
              hsPkgs.fclabels
              hsPkgs.gloss
              hsPkgs.gloss-accelerate
              hsPkgs.mwc-random
            ];
          };
          accelerate-hashcat = {
            depends  = optionals (!(!_flags.hashcat)) [
              hsPkgs.base
              hsPkgs.accelerate
              hsPkgs.accelerate-examples
              hsPkgs.bytestring
              hsPkgs.bytestring-lexing
              hsPkgs.cereal
              hsPkgs.criterion
              hsPkgs.fclabels
              hsPkgs.mwc-random
            ];
          };
          accelerate-fft = {
            depends  = optionals (!(!_flags.fft)) [
              hsPkgs.base
              hsPkgs.accelerate
              hsPkgs.accelerate-examples
              hsPkgs.accelerate-fft
              hsPkgs.accelerate-io
              hsPkgs.colour-accelerate
              hsPkgs.fclabels
              hsPkgs.filepath
            ];
          };
          accelerate-pagerank = {
            depends  = optionals (!(!_flags.pagerank)) [
              hsPkgs.base
              hsPkgs.accelerate
              hsPkgs.accelerate-examples
              hsPkgs.accelerate-io
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.fclabels
              hsPkgs.vector
              hsPkgs.vector-algorithms
            ];
          };
          accelerate-ray = {
            depends  = optionals (!(!_flags.ray)) [
              hsPkgs.base
              hsPkgs.accelerate
              hsPkgs.accelerate-examples
              hsPkgs.colour-accelerate
              hsPkgs.fclabels
              hsPkgs.gloss
              hsPkgs.gloss-accelerate
              hsPkgs.gloss-raster-accelerate
              hsPkgs.lens-accelerate
              hsPkgs.linear-accelerate
            ];
          };
          accelerate-kmeans = {
            depends  = optionals (!(!_flags.kmeans)) [
              hsPkgs.base
              hsPkgs.accelerate
              hsPkgs.accelerate-examples
              hsPkgs.binary
              hsPkgs.directory
              hsPkgs.fclabels
              hsPkgs.normaldistribution
              hsPkgs.random
            ];
          };
        };
      };
    }