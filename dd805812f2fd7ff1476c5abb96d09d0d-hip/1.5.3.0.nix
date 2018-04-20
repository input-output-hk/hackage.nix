{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hip";
          version = "1.5.3.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "lehins@yandex.ru";
        author = "Alexey Kuleshevich";
        homepage = "https://github.com/lehins/hip";
        url = "";
        synopsis = "Haskell Image Processing (HIP) Library.";
        description = "\nHaskell Image Processing (HIP) Library provides an easy to use interface with a whole variaty of image manipulation capabilities.\n\nProcessing can be done sequentially as well as in parallel, with an inherited fusion capabily, all through <https://hackage.haskell.org/package/repa repa> and <https://hackage.haskell.org/package/vector vector> packages. It is highly extendable, with an ability to add various color spaces or provide implementations for underlying array like custom data structures.\n\nIt is capable of reading and writing a number of popular image formats by using <https://hackage.haskell.org/package/JuicyPixels JuciyPixels> and <https://hackage.haskell.org/package/netpbm netpbm> packages. Being a pure Haskell library it does not require any external programs, although it can display images using a program of your choice.";
        buildType = "Simple";
      };
      components = {
        hip = {
          depends  = [
            hsPkgs.Chart
            hsPkgs.Chart-diagrams
            hsPkgs.JuicyPixels
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.colour
            hsPkgs.deepseq
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.netpbm
            hsPkgs.primitive
            hsPkgs.process
            hsPkgs.repa
            hsPkgs.temporary
            hsPkgs.vector
          ];
        };
        tests = {
          hip-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.hip
              hsPkgs.hspec
              hsPkgs.QuickCheck
            ];
          };
        };
        benchmarks = {
          convolution = {
            depends  = [
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.deepseq
              hsPkgs.repa
              hsPkgs.repa-algorithms
              hsPkgs.hip
              hsPkgs.vector
            ];
          };
          histogram = {
            depends  = [
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.hip
            ];
          };
        };
      };
    }