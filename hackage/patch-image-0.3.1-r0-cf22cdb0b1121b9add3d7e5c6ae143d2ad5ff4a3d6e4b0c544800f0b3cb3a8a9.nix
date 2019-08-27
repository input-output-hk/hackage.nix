let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { llvm = true; cuda = true; builddraft = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "patch-image"; version = "0.3.1"; };
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
            (hsPkgs."knead" or (buildDepError "knead"))
            (hsPkgs."llvm-extra" or (buildDepError "llvm-extra"))
            (hsPkgs."llvm-tf" or (buildDepError "llvm-tf"))
            (hsPkgs."tfp" or (buildDepError "tfp"))
            (hsPkgs."JuicyPixels" or (buildDepError "JuicyPixels"))
            (hsPkgs."hmatrix" or (buildDepError "hmatrix"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."pqueue" or (buildDepError "pqueue"))
            (hsPkgs."enumset" or (buildDepError "enumset"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."fft" or (buildDepError "fft"))
            (hsPkgs."storable-tuple" or (buildDepError "storable-tuple"))
            (hsPkgs."carray" or (buildDepError "carray"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."cassava" or (buildDepError "cassava"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."explicit-exception" or (buildDepError "explicit-exception"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."non-empty" or (buildDepError "non-empty"))
            (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        "patch-image-cuda" = {
          depends = (pkgs.lib).optionals (flags.cuda) [
            (hsPkgs."accelerate-fourier" or (buildDepError "accelerate-fourier"))
            (hsPkgs."accelerate-arithmetic" or (buildDepError "accelerate-arithmetic"))
            (hsPkgs."accelerate-utility" or (buildDepError "accelerate-utility"))
            (hsPkgs."accelerate-cufft" or (buildDepError "accelerate-cufft"))
            (hsPkgs."accelerate-cuda" or (buildDepError "accelerate-cuda"))
            (hsPkgs."accelerate-io" or (buildDepError "accelerate-io"))
            (hsPkgs."accelerate" or (buildDepError "accelerate"))
            (hsPkgs."JuicyPixels" or (buildDepError "JuicyPixels"))
            (hsPkgs."hmatrix" or (buildDepError "hmatrix"))
            (hsPkgs."gnuplot" or (buildDepError "gnuplot"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        "patch-image-draft" = {
          depends = (pkgs.lib).optionals (flags.builddraft) [
            (hsPkgs."JuicyPixels" or (buildDepError "JuicyPixels"))
            (hsPkgs."GeomAlgLib" or (buildDepError "GeomAlgLib"))
            (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        };
      };
    }