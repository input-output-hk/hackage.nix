{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "friday"; version = "0.1.5"; };
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."convertible" or ((hsPkgs.pkgs-errors).buildDepError "convertible"))
          (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
          (hsPkgs."ratio-int" or ((hsPkgs.pkgs-errors).buildDepError "ratio-int"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        libs = [ (pkgs."IL" or ((hsPkgs.pkgs-errors).sysDepError "IL")) ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or ((hsPkgs.pkgs-errors).buildToolDepError "hsc2hs")))
          ];
        buildable = true;
        };
      exes = {
        "delayed" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."friday" or ((hsPkgs.pkgs-errors).buildDepError "friday"))
            ];
          buildable = if !flags.examples then false else true;
          };
        "canny" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."friday" or ((hsPkgs.pkgs-errors).buildDepError "friday"))
            ];
          buildable = if !flags.examples then false else true;
          };
        "gaussian_blur" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."friday" or ((hsPkgs.pkgs-errors).buildDepError "friday"))
            ];
          buildable = if !flags.examples then false else true;
          };
        "histogram" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."friday" or ((hsPkgs.pkgs-errors).buildDepError "friday"))
            ];
          buildable = if !flags.examples then false else true;
          };
        "resize_image" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."friday" or ((hsPkgs.pkgs-errors).buildDepError "friday"))
            ];
          buildable = if !flags.examples then false else true;
          };
        "threshold" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."friday" or ((hsPkgs.pkgs-errors).buildDepError "friday"))
            ];
          buildable = if !flags.examples then false else true;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."friday" or ((hsPkgs.pkgs-errors).buildDepError "friday"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "benchmark" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."friday" or ((hsPkgs.pkgs-errors).buildDepError "friday"))
            ];
          buildable = true;
          };
        };
      };
    }