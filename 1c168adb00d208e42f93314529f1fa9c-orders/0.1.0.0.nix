{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "orders";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "david.darais@gmail.com";
        author = "David Darais";
        homepage = "";
        url = "";
        synopsis = "basic orders";
        description = "support for partial orders and other stuffs";
        buildType = "Simple";
      };
      components = {
        orders = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
          ];
        };
      };
    }