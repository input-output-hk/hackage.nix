{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hszephyr";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Nelson Elhage <nelhage@nelhage.com>";
        author = "Nelson Elhage <nelhage@nelhage.com>";
        homepage = "";
        url = "";
        synopsis = "Simple libzephyr bindings";
        description = "Network.Zephyr provides haskell bindings to MIT's \"Zephyr\" instant\nmessaging / notification service.";
        buildType = "Simple";
      };
      components = {
        hszephyr = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.bytestring
            hsPkgs.time
          ];
          libs = [
            pkgs.zephyr
            pkgs.com_err
          ];
        };
      };
    }