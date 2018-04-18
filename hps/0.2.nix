{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hps";
          version = "0.2";
        };
        license = "LicenseRef-GPL";
        copyright = "Rohan Drape, 2006-2010";
        maintainer = "rd@slavepianos.org";
        author = "Rohan Drape";
        homepage = "http://slavepianos.org/rd/?t=hps";
        url = "";
        synopsis = "Haskell Postscript";
        description = "Haskell library partially implementing the\npostscript drawing model.";
        buildType = "Simple";
      };
      components = {
        hps = {
          depends  = [ hsPkgs.base ];
        };
      };
    }