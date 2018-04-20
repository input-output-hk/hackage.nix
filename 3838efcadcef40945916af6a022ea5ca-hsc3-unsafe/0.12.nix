{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hsc3-unsafe";
          version = "0.12";
        };
        license = "LicenseRef-GPL";
        copyright = "(c) Rohan Drape, 2006-2012";
        maintainer = "rd@slavepianos.org";
        author = "Rohan Drape";
        homepage = "http://rd.slavepianos.org/?t=hsc3-unsafe";
        url = "";
        synopsis = "Unsafe Haskell SuperCollider";
        description = "Alternate non-deterministic UGen constructors.";
        buildType = "Simple";
      };
      components = {
        hsc3-unsafe = {
          depends  = [
            hsPkgs.base
            hsPkgs.hsc3
          ];
        };
      };
    }