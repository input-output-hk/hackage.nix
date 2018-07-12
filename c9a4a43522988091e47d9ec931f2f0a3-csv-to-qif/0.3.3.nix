{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      threaded = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "csv-to-qif";
          version = "0.3.3";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Ingolf Wagner";
        maintainer = "Ingolf Wagner <csv-to-qif@ingolf-wagner.de>";
        author = "Ingolf Wagner";
        homepage = "http://mrvandalo.github.io/csv-to-qif/";
        url = "";
        synopsis = "A small program that will read csv files and create qif files";
        description = "Binary to convert a wide range of csv files to qif files.\nThe main target is to read them into GnuCash.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "csv-to-qif" = {
            depends  = [
              hsPkgs.base
              hsPkgs.split
              hsPkgs.regex-tdfa
              hsPkgs.spreadsheet
              hsPkgs.explicit-exception
              hsPkgs.parsec
            ];
          };
        };
        tests = {
          "tester" = {
            depends  = [
              hsPkgs.base
              hsPkgs.split
              hsPkgs.regex-tdfa
              hsPkgs.Cabal
              hsPkgs.hspec
              hsPkgs.spreadsheet
              hsPkgs.explicit-exception
              hsPkgs.parsec
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }