{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hmeap";
          version = "0.10";
        };
        license = "LicenseRef-GPL";
        copyright = "Rohan Drape and others, 2007-2011";
        maintainer = "rd@slavepianos.org";
        author = "Rohan Drape";
        homepage = "http://slavepianos.org/rd/?t=hmeap";
        url = "";
        synopsis = "Haskell Meapsoft Parser";
        description = "Parser for the anaylsis files produced by the\nMeapsoft feature extractor.";
        buildType = "Simple";
      };
      components = {
        hmeap = {
          depends  = [
            hsPkgs.array
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.bytestring-lexing
            hsPkgs.delimited-text
            hsPkgs.parsec
          ];
        };
      };
    }