{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pdfname";
          version = "0.1.3";
        };
        license = "MIT";
        copyright = "Andrés Sicard-Ramírez 2017";
        maintainer = "Andrés Sicard-Ramírez <asr@eafit.edu.co>";
        author = "Andrés Sicard-Ramírez with contributions by Juan Pedro Villa-Isaza.";
        homepage = "https://github.com/asr/pdfname#readme";
        url = "";
        synopsis = "Name a PDF file using information from the pdfinfo command";
        description = "The @pdfname@ command-line program names a PDF file using the\nauthor, year of creation and title information extracted from the\n@pdfinfo@ program.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "pdfname" = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.optparse-applicative
              hsPkgs.pdfinfo
              hsPkgs.text
            ];
          };
        };
      };
    }