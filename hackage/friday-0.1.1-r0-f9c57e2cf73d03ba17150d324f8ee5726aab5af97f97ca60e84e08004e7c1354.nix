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
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "friday"; version = "0.1.1"; };
      license = "LGPL-3.0-only";
      copyright = "";
      maintainer = "Raphael Javaux <raphaeljavaux[at]gmail.com>";
      author = "Raphael Javaux <raphaeljavaux[at]gmail.com>";
      homepage = "https://github.com/RaphaelJ/friday";
      url = "";
      synopsis = "A functionnal image processing library for Haskell.";
      description = "Friday provides functions to manipulate images in a\nfunctional way.\nThe library is designed to be fast, generic and\ntype-safe.\n\nThe library uses FFI calls to the DevIL image library to\nread images from a wide variety of formats, including\nBMP, JPG, PNG, GIF, ICO and PSD. Except for I/Os, friday\nis entirely written in Haskell.\n\nImages can be represented in two representations:\n\n* the 'Manifest' representation stores images in Haskell\n'Vector's ;\n\n* the 'Delayed' representation uses functions to produce\nimages pixels. These images can be combined to produce\ncomplex transformations. By some inlining, Haskell\ncompilers are able to produce fast algorithms by\nremoving intermediate structures.\n\nThe library currently support four color spaces: RGB,\nRGBA, HSV and gray-scale images.\n\nPlease read our\n<https://github.com/RaphaelJ/friday/blob/master/README.md README>\nto get a detailed usage and some examples.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."convertible" or (errorHandler.buildDepError "convertible"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."ratio-int" or (errorHandler.buildDepError "ratio-int"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        libs = [ (pkgs."IL" or (errorHandler.sysDepError "IL")) ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs.components.exes.hsc2hs or (pkgs.buildPackages.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
          ];
        buildable = true;
        };
      exes = {
        "delayed" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."friday" or (errorHandler.buildDepError "friday"))
            ];
          buildable = if !flags.examples then false else true;
          };
        "canny" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."friday" or (errorHandler.buildDepError "friday"))
            ];
          buildable = if !flags.examples then false else true;
          };
        "gaussian_blur" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."friday" or (errorHandler.buildDepError "friday"))
            ];
          buildable = if !flags.examples then false else true;
          };
        "histogram" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."friday" or (errorHandler.buildDepError "friday"))
            ];
          buildable = if !flags.examples then false else true;
          };
        "resize_image" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."friday" or (errorHandler.buildDepError "friday"))
            ];
          buildable = if !flags.examples then false else true;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."friday" or (errorHandler.buildDepError "friday"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "benchmark" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."friday" or (errorHandler.buildDepError "friday"))
            ];
          buildable = true;
          };
        };
      };
    }