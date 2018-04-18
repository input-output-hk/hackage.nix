{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hsharc";
          version = "0.11";
        };
        license = "LicenseRef-GPL";
        copyright = "Rohan Drape, 2007-2011";
        maintainer = "rd@slavepianos.org";
        author = "Rohan Drape";
        homepage = "http://slavepianos.org/rd/?t=hsharc";
        url = "";
        synopsis = "Haskell SHARC bindings";
        description = "Parser for SHARC data (the Sandell Harmonic Archive)";
        buildType = "Simple";
      };
      components = {
        hsharc = {
          depends  = [
            hsPkgs.base
            hsPkgs.xml
          ];
        };
      };
    }