{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "bindings-parport";
          version = "0.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "sivaramreddy@hotmail.com";
        author = "Sivaram Gowkanapalli";
        homepage = "";
        url = "";
        synopsis = "parport bindings";
        description = "";
        buildType = "Simple";
      };
      components = {
        bindings-parport = {
          depends  = [
            hsPkgs.base
            hsPkgs.bindings-DSL
          ];
        };
      };
    }