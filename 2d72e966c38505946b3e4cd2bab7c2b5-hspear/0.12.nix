{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hspear";
          version = "0.12";
        };
        license = "LicenseRef-GPL";
        copyright = "Rohan Drape, 2012";
        maintainer = "rd@slavepianos.org";
        author = "Rohan Drape";
        homepage = "http://rd.slavepianos.org/?t=hspear";
        url = "";
        synopsis = "Haskell Spear Parser";
        description = "Parser for the analysis files produced by the\nSpear frequency partial tracker.";
        buildType = "Simple";
      };
      components = {
        "hspear" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.bytestring-lexing
            hsPkgs.split
            hsPkgs.utf8-string
            hsPkgs.zlib
          ];
        };
      };
    }