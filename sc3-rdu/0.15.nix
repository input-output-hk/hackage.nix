{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "sc3-rdu";
          version = "0.15";
        };
        license = "LicenseRef-GPL";
        copyright = "(c) Rohan Drape, 1998-2014";
        maintainer = "rd@slavepianos.org";
        author = "Rohan Drape";
        homepage = "http://rd.slavepianos.org/t/sc3-rdu";
        url = "";
        synopsis = "Haskell bindings to sc3-rdu (sc3 rd ugens)";
        description = "Haskell bindings to sc3-rdu (sc3 rd ugens)";
        buildType = "Simple";
      };
      components = {
        sc3-rdu = {
          depends  = [
            hsPkgs.base
            hsPkgs.hsc3
            hsPkgs.hsc3-db
          ];
        };
      };
    }