{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "friday-devil"; version = "0.1.1.1"; };
      license = "LGPL-3.0-only";
      copyright = "";
      maintainer = "Raphael Javaux <raphaeljavaux[at]gmail.com>";
      author = "Raphael Javaux <raphaeljavaux[at]gmail.com>";
      homepage = "https://github.com/RaphaelJ/friday-devil";
      url = "";
      synopsis = "Uses the DevIL C library to read and write images from\nand to files and memory buffers.";
      description = "The library uses FFI calls to the DevIL image library to\nread images from a wide variety of formats, including\nBMP, JPG, PNG, GIF, ICO and PSD.\n\nPlease read our\n<https://github.com/RaphaelJ/friday-devil/blob/master/README.md README>\nto get a detailed usage and some examples.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."convertible" or ((hsPkgs.pkgs-errors).buildDepError "convertible"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."friday" or ((hsPkgs.pkgs-errors).buildDepError "friday"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        libs = [ (pkgs."IL" or ((hsPkgs.pkgs-errors).sysDepError "IL")) ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or ((hsPkgs.pkgs-errors).buildToolDepError "hsc2hs")))
          ];
        buildable = true;
        };
      };
    }