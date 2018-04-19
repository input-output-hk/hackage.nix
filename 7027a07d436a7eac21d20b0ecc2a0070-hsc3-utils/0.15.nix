{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hsc3-utils";
          version = "0.15";
        };
        license = "LicenseRef-GPL";
        copyright = "(c) Rohan Drape, 2013-2014";
        maintainer = "rd@slavepianos.org";
        author = "Rohan Drape";
        homepage = "http://rd.slavepianos.org/t/hsc3-utils";
        url = "";
        synopsis = "Haskell SuperCollider Utilities";
        description = "Haskell SuperCollider Utilities";
        buildType = "Simple";
      };
      components = {
        hsc3-utils = {
          depends  = [
            hsPkgs.base
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.hashable
            hsPkgs.hosc
            hsPkgs.hsc3
            hsPkgs.hsc3-sf
          ];
        };
        exes = {
          hsc3-hash-at = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3-rw
            ];
          };
          hsc3-hash-paren = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3-rw
            ];
          };
          hsc3-id-rewrite = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3-rw
            ];
          };
          hsc3-id-clear = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3-rw
            ];
          };
          hsc3-scsyndef-to-dot = {
            depends  = [
              hsPkgs.base
              hsPkgs.filepath
              hsPkgs.hsc3-dot
              hsPkgs.hsc3
              hsPkgs.process
            ];
          };
        };
      };
    }