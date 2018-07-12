{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hsc3-lang";
          version = "0.7";
        };
        license = "LicenseRef-GPL";
        copyright = "(c) Rohan Drape, 2007-2009";
        maintainer = "rd@slavepianos.org";
        author = "Rohan Drape";
        homepage = "http://slavepianos.org/rd/f/649352/";
        url = "";
        synopsis = "Haskell SuperCollider Language";
        description = "Haskell library defining operations from the\nSuperCollider language class library";
        buildType = "Simple";
      };
      components = {
        "hsc3-lang" = {
          depends  = [
            hsPkgs.array
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.random
          ];
        };
      };
    }