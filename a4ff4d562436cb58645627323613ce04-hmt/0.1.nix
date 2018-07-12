{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hmt";
          version = "0.1";
        };
        license = "LicenseRef-GPL";
        copyright = "Rohan Drape, 2006-2009";
        maintainer = "rd@slavepianos.org";
        author = "Rohan Drape";
        homepage = "http://www.slavepianos.org/rd/";
        url = "";
        synopsis = "Haskell Music Theory";
        description = "Haskell music theory library";
        buildType = "Simple";
      };
      components = {
        "hmt" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.parsec
            hsPkgs.permutation
          ];
        };
      };
    }