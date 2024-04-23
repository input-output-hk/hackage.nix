{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { llvm = true; cuda = true; builddraft = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "patch-image"; version = "0.3.3"; };
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
            (hsPkgs."knead" or (errorHandler.buildDepError "knead"))
            (hsPkgs."llvm-extra" or (errorHandler.buildDepError "llvm-extra"))
            (hsPkgs."llvm-tf" or (errorHandler.buildDepError "llvm-tf"))
            (hsPkgs."tfp" or (errorHandler.buildDepError "tfp"))
            (hsPkgs."comfort-array" or (errorHandler.buildDepError "comfort-array"))
            (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
            (hsPkgs."dsp" or (errorHandler.buildDepError "dsp"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."pqueue" or (errorHandler.buildDepError "pqueue"))
            (hsPkgs."enumset" or (errorHandler.buildDepError "enumset"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
            (hsPkgs."fft" or (errorHandler.buildDepError "fft"))
            (hsPkgs."storable-complex" or (errorHandler.buildDepError "storable-complex"))
            (hsPkgs."storable-tuple" or (errorHandler.buildDepError "storable-tuple"))
            (hsPkgs."bool8" or (errorHandler.buildDepError "bool8"))
            (hsPkgs."carray" or (errorHandler.buildDepError "carray"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."explicit-exception" or (errorHandler.buildDepError "explicit-exception"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."non-empty" or (errorHandler.buildDepError "non-empty"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."prelude-compat" or (errorHandler.buildDepError "prelude-compat"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = if flags.llvm then true else false;
        };
        "patch-image-cuda" = {
          depends = pkgs.lib.optionals (flags.cuda) [
            (hsPkgs."accelerate-fourier" or (errorHandler.buildDepError "accelerate-fourier"))
            (hsPkgs."accelerate-arithmetic" or (errorHandler.buildDepError "accelerate-arithmetic"))
            (hsPkgs."accelerate-utility" or (errorHandler.buildDepError "accelerate-utility"))
            (hsPkgs."accelerate-cufft" or (errorHandler.buildDepError "accelerate-cufft"))
            (hsPkgs."accelerate-llvm-ptx" or (errorHandler.buildDepError "accelerate-llvm-ptx"))
            (hsPkgs."accelerate-io" or (errorHandler.buildDepError "accelerate-io"))
            (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
            (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
            (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
            (hsPkgs."dsp" or (errorHandler.buildDepError "dsp"))
            (hsPkgs."gnuplot" or (errorHandler.buildDepError "gnuplot"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."enumset" or (errorHandler.buildDepError "enumset"))
            (hsPkgs."explicit-exception" or (errorHandler.buildDepError "explicit-exception"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."non-empty" or (errorHandler.buildDepError "non-empty"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = if flags.cuda then true else false;
        };
        "patch-image-draft" = {
          depends = pkgs.lib.optionals (flags.builddraft) [
            (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
            (hsPkgs."GeomAlgLib" or (errorHandler.buildDepError "GeomAlgLib"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = if flags.builddraft then true else false;
        };
      };
    };
  }