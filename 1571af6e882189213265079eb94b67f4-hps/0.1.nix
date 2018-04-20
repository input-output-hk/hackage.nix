{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hps";
          version = "0.1";
        };
        license = "LicenseRef-GPL";
        copyright = "Rohan Drape, 2006-2009";
        maintainer = "rd@slavepianos.org";
        author = "Rohan Drape";
        homepage = "http://www.slavepianos.org/rd/f/972048/";
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