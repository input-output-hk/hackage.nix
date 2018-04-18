{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "bindings-ppdev";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "joe7mail@gmail.com";
        author = "Joe M";
        homepage = "";
        url = "";
        synopsis = "PPDev bindings";
        description = "";
        buildType = "Simple";
      };
      components = {
        bindings-ppdev = {
          depends  = [
            hsPkgs.base
            hsPkgs.bindings-DSL
            hsPkgs.ioctl
          ];
        };
      };
    }