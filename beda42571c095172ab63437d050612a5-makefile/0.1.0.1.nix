{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "makefile";
          version = "0.1.0.1";
        };
        license = "MIT";
        copyright = "2016 Nicolas Mattia";
        maintainer = "nicolas@nmattia.com";
        author = "Nicolas Mattia";
        homepage = "http://github.com/nmattia/mask";
        url = "";
        synopsis = "Simple Makefile parser";
        description = "This package provides a few @Attoparser@ parsers and convenience functions\nfor parsing Makefiles.\nThe datatypes used for describing Makefiles are located in 'Data.Makefile'.\nThe parsers and parsing functions are located in 'Data.Makefile.Parse'.\nTo parse a Makefile in the current folder, simply run 'parseMakefile'. To\nparse a Makefile located at @path@, run 'parseAsMakefile' @path@.";
        buildType = "Simple";
      };
      components = {
        makefile = {
          depends  = [
            hsPkgs.base
            hsPkgs.attoparsec
            hsPkgs.bytestring
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.attoparsec
              hsPkgs.bytestring
              hsPkgs.doctest
              hsPkgs.Glob
              hsPkgs.makefile
            ];
          };
        };
      };
    }