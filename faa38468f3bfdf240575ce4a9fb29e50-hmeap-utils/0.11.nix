{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hmeap-utils";
          version = "0.11";
        };
        license = "LicenseRef-GPL";
        copyright = "Rohan Drape and others, 2007-2011";
        maintainer = "rd@slavepianos.org";
        author = "Rohan Drape";
        homepage = "http://slavepianos.org/rd/?t=hmeap-utils";
        url = "";
        synopsis = "Haskell Meapsoft Parser Utilities";
        description = "Utilities related to the hmeap parser.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "hmeap-browse" = {
            depends  = [
              hsPkgs.array
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.bytestring-lexing
              hsPkgs.delimited-text
              hsPkgs.hmeap
              hsPkgs.parsec
            ];
          };
          "hmeap-parser" = {
            depends  = [
              hsPkgs.array
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.bytestring-lexing
              hsPkgs.delimited-text
              hsPkgs.hmeap
              hsPkgs.parsec
            ];
          };
          "hmeap-play" = {
            depends  = [
              hsPkgs.array
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.bytestring-lexing
              hsPkgs.delimited-text
              hsPkgs.hmeap
              hsPkgs.hosc
              hsPkgs.hsc3
              hsPkgs.parsec
            ];
          };
          "hmeap-plot" = {
            depends  = [
              hsPkgs.array
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.bytestring-lexing
              hsPkgs.delimited-text
              hsPkgs.gnuplot
              hsPkgs.hmatrix
              hsPkgs.hmeap
              hsPkgs.parsec
            ];
          };
          "hmeap-stat" = {
            depends  = [
              hsPkgs.array
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.bytestring-lexing
              hsPkgs.delimited-text
              hsPkgs.hmatrix
              hsPkgs.hmeap
              hsPkgs.parsec
            ];
          };
        };
      };
    }