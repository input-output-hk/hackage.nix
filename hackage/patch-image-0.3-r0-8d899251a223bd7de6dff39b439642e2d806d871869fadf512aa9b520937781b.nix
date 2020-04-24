{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { llvm = true; cuda = true; builddraft = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "patch-image"; version = "0.3"; };
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
          depends = (pkgs.lib).optionals (flags.llvm) [
            (hsPkgs."knead" or ((hsPkgs.pkgs-errors).buildDepError "knead"))
            (hsPkgs."llvm-extra" or ((hsPkgs.pkgs-errors).buildDepError "llvm-extra"))
            (hsPkgs."llvm-tf" or ((hsPkgs.pkgs-errors).buildDepError "llvm-tf"))
            (hsPkgs."tfp" or ((hsPkgs.pkgs-errors).buildDepError "tfp"))
            (hsPkgs."JuicyPixels" or ((hsPkgs.pkgs-errors).buildDepError "JuicyPixels"))
            (hsPkgs."hmatrix" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."pqueue" or ((hsPkgs.pkgs-errors).buildDepError "pqueue"))
            (hsPkgs."enumset" or ((hsPkgs.pkgs-errors).buildDepError "enumset"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."fft" or ((hsPkgs.pkgs-errors).buildDepError "fft"))
            (hsPkgs."carray" or ((hsPkgs.pkgs-errors).buildDepError "carray"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."cassava" or ((hsPkgs.pkgs-errors).buildDepError "cassava"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."explicit-exception" or ((hsPkgs.pkgs-errors).buildDepError "explicit-exception"))
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."non-empty" or ((hsPkgs.pkgs-errors).buildDepError "non-empty"))
            (hsPkgs."utility-ht" or ((hsPkgs.pkgs-errors).buildDepError "utility-ht"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if flags.llvm then true else false;
          };
        "patch-image-cuda" = {
          depends = (pkgs.lib).optionals (flags.cuda) [
            (hsPkgs."accelerate-fourier" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-fourier"))
            (hsPkgs."accelerate-arithmetic" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-arithmetic"))
            (hsPkgs."accelerate-utility" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-utility"))
            (hsPkgs."accelerate-cufft" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-cufft"))
            (hsPkgs."accelerate-cuda" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-cuda"))
            (hsPkgs."accelerate-io" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-io"))
            (hsPkgs."accelerate" or ((hsPkgs.pkgs-errors).buildDepError "accelerate"))
            (hsPkgs."JuicyPixels" or ((hsPkgs.pkgs-errors).buildDepError "JuicyPixels"))
            (hsPkgs."hmatrix" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix"))
            (hsPkgs."gnuplot" or ((hsPkgs.pkgs-errors).buildDepError "gnuplot"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."utility-ht" or ((hsPkgs.pkgs-errors).buildDepError "utility-ht"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if flags.cuda then true else false;
          };
        "patch-image-draft" = {
          depends = (pkgs.lib).optionals (flags.builddraft) [
            (hsPkgs."JuicyPixels" or ((hsPkgs.pkgs-errors).buildDepError "JuicyPixels"))
            (hsPkgs."GeomAlgLib" or ((hsPkgs.pkgs-errors).buildDepError "GeomAlgLib"))
            (hsPkgs."utility-ht" or ((hsPkgs.pkgs-errors).buildDepError "utility-ht"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if flags.builddraft then true else false;
          };
        };
      };
    }