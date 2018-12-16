{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      llvm = true;
      cuda = true;
      builddraft = false;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "patch-image";
        version = "0.3.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://hub.darcs.net/thielema/patch-image/";
      url = "";
      synopsis = "Compose a big image from overlapping parts";
      description = "Compose a collage from overlapping image parts.\nIn contrast to Hugin,\nthis is not intended for creating panoramas from multiple photographies,\nbut instead is specialised to creating highly accurate reconstructions\nof flat but big image sources, like record covers, posters or newspapers.\nIt solves the problem that your scanner may be too small\nto capture a certain image as a whole.\n\nThere are two versions of the program:\n\n* A version using LLVM via the @knead@ package:\nEnable it with the Cabal flag @-fllvm@.\n\n* A version using CUDA via @accelerate-cuda@:\nEnable it with the Cabal flag @-fcuda@.\n\nBoth of them have their individual installation difficulties.\n\nRestrictions:\n\n* Only supports JPEG format.\n\n* Images must be approximately correctly oriented.\n\n* May have problems with unstructured areas in the image.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "patch-image-llvm" = {
          depends = pkgs.lib.optionals (flags.llvm) [
            (hsPkgs.knead)
            (hsPkgs.llvm-extra)
            (hsPkgs.llvm-tf)
            (hsPkgs.tfp)
            (hsPkgs.JuicyPixels)
            (hsPkgs.dsp)
            (hsPkgs.vector)
            (hsPkgs.pqueue)
            (hsPkgs.enumset)
            (hsPkgs.containers)
            (hsPkgs.semigroups)
            (hsPkgs.fft)
            (hsPkgs.storable-complex)
            (hsPkgs.storable-tuple)
            (hsPkgs.bool8)
            (hsPkgs.carray)
            (hsPkgs.array)
            (hsPkgs.cassava)
            (hsPkgs.unordered-containers)
            (hsPkgs.bytestring)
            (hsPkgs.explicit-exception)
            (hsPkgs.Cabal)
            (hsPkgs.filepath)
            (hsPkgs.non-empty)
            (hsPkgs.utility-ht)
            (hsPkgs.prelude-compat)
            (hsPkgs.base)
          ];
        };
        "patch-image-cuda" = {
          depends = pkgs.lib.optionals (flags.cuda) [
            (hsPkgs.accelerate-fourier)
            (hsPkgs.accelerate-arithmetic)
            (hsPkgs.accelerate-utility)
            (hsPkgs.accelerate-cufft)
            (hsPkgs.accelerate-llvm-ptx)
            (hsPkgs.accelerate-io)
            (hsPkgs.accelerate)
            (hsPkgs.JuicyPixels)
            (hsPkgs.cassava)
            (hsPkgs.dsp)
            (hsPkgs.gnuplot)
            (hsPkgs.containers)
            (hsPkgs.array)
            (hsPkgs.vector)
            (hsPkgs.unordered-containers)
            (hsPkgs.bytestring)
            (hsPkgs.enumset)
            (hsPkgs.explicit-exception)
            (hsPkgs.Cabal)
            (hsPkgs.filepath)
            (hsPkgs.non-empty)
            (hsPkgs.utility-ht)
            (hsPkgs.base)
          ];
        };
        "patch-image-draft" = {
          depends = pkgs.lib.optionals (flags.builddraft) [
            (hsPkgs.JuicyPixels)
            (hsPkgs.GeomAlgLib)
            (hsPkgs.utility-ht)
            (hsPkgs.base)
          ];
        };
      };
    };
  }