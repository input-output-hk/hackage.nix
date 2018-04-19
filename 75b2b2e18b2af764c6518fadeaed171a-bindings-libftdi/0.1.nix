{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "bindings-libftdi";
          version = "0.1";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "none";
        author = "Joe";
        homepage = "";
        url = "";
        synopsis = "Low level bindings to libftdi.";
        description = "<Project description>";
        buildType = "Simple";
      };
      components = {
        bindings-libftdi = {
          depends  = [
            hsPkgs.base
            hsPkgs.bindings-DSL
          ];
        };
      };
    }