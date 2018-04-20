{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hsc3-cairo";
          version = "0.13";
        };
        license = "LicenseRef-GPL";
        copyright = "(c) Rohan Drape, 2012";
        maintainer = "rd@slavepianos.org";
        author = "Rohan Drape";
        homepage = "http://rd.slavepianos.org/?t=hsc3-cairo";
        url = "";
        synopsis = "haskell supercollider cairo drawing";
        description = "haskell supercollider cairo drawing";
        buildType = "Simple";
      };
      components = {
        hsc3-cairo = {
          depends  = [
            hsPkgs.base
            hsPkgs.cairo
            hsPkgs.gtk
            hsPkgs.hcg-minus
            hsPkgs.hosc
            hsPkgs.hsc3
            hsPkgs.split
          ];
        };
      };
    }