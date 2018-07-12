{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hls";
          version = "0.15";
        };
        license = "LicenseRef-GPL";
        copyright = "Rohan Drape, 2006-2014";
        maintainer = "rd@slavepianos.org";
        author = "Rohan Drape";
        homepage = "http://rd.slavepianos.org/t/hls";
        url = "";
        synopsis = "Haskell Lindenmayer Systems";
        description = "Haskell Lindenmayer Systems";
        buildType = "Simple";
      };
      components = {
        "hls" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.hcg-minus
            hsPkgs.hps
          ];
        };
      };
    }