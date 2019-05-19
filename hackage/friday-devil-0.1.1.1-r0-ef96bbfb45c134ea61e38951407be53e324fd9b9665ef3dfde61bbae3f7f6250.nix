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
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.convertible)
          (hsPkgs.deepseq)
          (hsPkgs.friday)
          (hsPkgs.transformers)
          (hsPkgs.vector)
          ];
        libs = [ (pkgs."IL") ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs))
          ];
        };
      };
    }