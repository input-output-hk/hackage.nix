{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "pdfname"; version = "0.1.1"; };
      license = "MIT";
      copyright = "Andrés Sicard-Ramírez 2017";
      maintainer = "Andrés Sicard-Ramírez <asr@eafit.edu.co>";
      author = "Andrés Sicard-Ramírez with contributions by Juan Pedro Villa-Isaza.";
      homepage = "https://github.com/asr/pdfname#readme";
      url = "";
      synopsis = "Name a PDF file using information from the pdfinfo command";
      description = "pdfname names a PDF file using the author, year of creation and\ntitle information extracted from the pdfinfo program.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "pdfname" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.optparse-applicative)
            (hsPkgs.pdfinfo)
            (hsPkgs.text)
            ];
          };
        };
      };
    }