{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
      buildtests = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "spreadsheet";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
        author = "Henning Thielemann <haskell@henning-thielemann.de>";
        homepage = "http://www.haskell.org/haskellwiki/Spreadsheet";
        url = "";
        synopsis = "Read and write spreadsheets from and to CSV files in a lazy way";
        description = "Read and write spreadsheets from and to CSV files in a lazy way.\nSee also the csv package on Hackage and\n<http://www.xoltar.org/languages/haskell.html>,\n<http://www.xoltar.org/languages/haskell/CSV.hs>.\nBoth do not parse lazy.\nReading from other source than plain 'String's could be easily added.";
        buildType = "Simple";
      };
      components = {
        "spreadsheet" = {
          depends  = [
            hsPkgs.utility-ht
            hsPkgs.transformers
            hsPkgs.explicit-exception
          ] ++ [ hsPkgs.base ];
        };
      };
    }