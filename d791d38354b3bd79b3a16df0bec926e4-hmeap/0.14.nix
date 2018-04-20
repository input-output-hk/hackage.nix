{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hmeap";
          version = "0.14";
        };
        license = "LicenseRef-GPL";
        copyright = "Rohan Drape and others, 2007-2013";
        maintainer = "rd@slavepianos.org";
        author = "Rohan Drape";
        homepage = "http://rd.slavepianos.org/?t=hmeap";
        url = "";
        synopsis = "Haskell Meapsoft Parser";
        description = "Parser for the analysis files produced by the\nMeapsoft feature extractor.";
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