{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hsc3-rec";
          version = "0.12";
        };
        license = "LicenseRef-GPL";
        copyright = "(c) Rohan Drape and others, 2008-2012";
        maintainer = "rd@slavepianos.org";
        author = "Rohan Drape";
        homepage = "http://slavepianos.org/rd/?t=hsc3-rec";
        url = "";
        synopsis = "Haskell SuperCollider Record Variants";
        description = "hsc3-rec provides record variants of the\nunit generator constructors at hsc3.";
        buildType = "Simple";
      };
      components = {
        hsc3-rec = {
          depends  = [
            hsPkgs.base
            hsPkgs.hsc3
          ];
        };
      };
    }