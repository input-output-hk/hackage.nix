{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      build-exec = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hps";
          version = "0.15";
        };
        license = "LicenseRef-GPL";
        copyright = "Rohan Drape, 2006-2014";
        maintainer = "rd@slavepianos.org";
        author = "Rohan Drape and others";
        homepage = "http://rd.slavepianos.org/?t=hps";
        url = "";
        synopsis = "Haskell Postscript";
        description = "Haskell library partially implementing the\npostscript drawing model.";
        buildType = "Simple";
      };
      components = {
        "hps" = {
          depends  = [
            hsPkgs.base
            hsPkgs.hcg-minus
          ];
        };
        exes = {
          "hps-fractals" = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.hcg-minus
              hsPkgs.random
            ];
          };
        };
      };
    }