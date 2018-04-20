{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hls";
          version = "0.14";
        };
        license = "LicenseRef-GPL";
        copyright = "Rohan Drape, 2006-2013";
        maintainer = "rd@slavepianos.org";
        author = "Rohan Drape";
        homepage = "http://rd.slavepianos.org/?t=hls";
        url = "";
        synopsis = "Haskell Lindenmayer Systems";
        description = "Haskell library for generating Lindemayer systems";
        buildType = "Simple";
      };
      components = {
        hls = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.hcg-minus
            hsPkgs.hps
          ];
        };
      };
    }