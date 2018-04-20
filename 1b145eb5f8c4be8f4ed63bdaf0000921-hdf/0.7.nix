{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hdf";
          version = "0.7";
        };
        license = "LicenseRef-GPL";
        copyright = "(c) Rohan Drape, 2006-2009";
        maintainer = "rd@slavepianos.org";
        author = "Rohan Drape";
        homepage = "http://www.slavepianos.org/rd/f/740981/";
        url = "";
        synopsis = "Haskell data flow library for audio processing";
        description = "Haskell data flow library for audio processing";
        buildType = "Simple";
      };
      components = {
        hdf = {
          depends  = [
            hsPkgs.base
            hsPkgs.directory
            hsPkgs.fgl
            hsPkgs.filepath
            hsPkgs.hosc
            hsPkgs.process
          ];
        };
      };
    }