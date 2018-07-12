{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "rabocsv2qif";
          version = "1.1.6";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "sander.venema@gmail.com";
        author = "Sander Venema";
        homepage = "";
        url = "";
        synopsis = "A library and program to create QIF files from Rabobank CSV exports.";
        description = "The rabocsv2qif package exposes a library, Rabobank, and an\nexecutable, rabocsv2qif. With the executable you can quickly\ncreate a timestamped QIF file from a Rabobank CSV file with\ntransactions. The library exposes a method, toQif, that can be\nused to create QIF data in code. It simply takes a String and\nreturns a String.";
        buildType = "Simple";
      };
      components = {
        "rabocsv2qif" = {
          depends  = [
            hsPkgs.base
            hsPkgs.time
            hsPkgs.split
            hsPkgs.old-locale
          ];
        };
        exes = {
          "rabocsv2qif" = {
            depends  = [ hsPkgs.base ];
          };
        };
      };
    }