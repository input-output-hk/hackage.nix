{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "friday"; version = "0.2.1.2"; };
      license = "LGPL-3.0-only";
      copyright = "";
      maintainer = "Raphael Javaux <raphaeljavaux[at]gmail.com>";
      author = "Raphael Javaux <raphaeljavaux[at]gmail.com>";
      homepage = "https://github.com/RaphaelJ/friday";
      url = "";
      synopsis = "A functional image processing library for Haskell.";
      description = "Friday provides functions to manipulate images in a\nfunctional way.\nThe library is designed to be fast, generic and\ntype-safe.\n\nImages can be represented in two representations:\n\n* the 'Manifest' representation stores images in Haskell\n'Vector's ;\n\n* the 'Delayed' representation uses functions to produce\nimages pixels. These images can be combined to produce\ncomplex transformations. By some inlining, Haskell\ncompilers are able to produce fast algorithms by\nremoving intermediate structures.\n\nThe library currently support four color spaces: RGB,\nRGBA, HSV and gray-scale images.\n\nPlease read our\n<https://github.com/RaphaelJ/friday/blob/master/README.md README>\nto get a detailed usage and some examples.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."convertible" or ((hsPkgs.pkgs-errors).buildDepError "convertible"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
          (hsPkgs."ratio-int" or ((hsPkgs.pkgs-errors).buildDepError "ratio-int"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
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
      };
    }