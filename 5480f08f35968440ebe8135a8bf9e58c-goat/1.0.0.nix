{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "goat";
          version = "1.0.0";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "2016-2017 Daniel Lovasko";
        maintainer = "Daniel Lovasko <daniel.lovasko@gmail.com>";
        author = "Daniel Lovasko <daniel.lovasko@gmail.com>";
        homepage = "https://github.com/lovasko/goat";
        url = "";
        synopsis = "Time Series Compression";
        description = "Goat is a time series compression implementation heavily\ninfluenced by the Gorilla paper published by Facebook.\nIt provides separate compression algorithms for both time\nand value points of a time series.";
        buildType = "Simple";
      };
      components = {
        goat = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.cereal
            hsPkgs.floating-bits
            hsPkgs.safe
            hsPkgs.split
          ];
        };
        tests = {
          goat-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.QuickCheck
              hsPkgs.bytestring
              hsPkgs.cereal
              hsPkgs.goat
              hsPkgs.safe
            ];
          };
        };
      };
    }