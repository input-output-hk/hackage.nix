{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "bindings-ppdev";
          version = "0.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "sivaramreddy@hotmail.com";
        author = "Sivaram Gowkanapalli";
        homepage = "";
        url = "";
        synopsis = "PPDev bindings";
        description = "";
        buildType = "Simple";
      };
      components = {
        "bindings-ppdev" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bindings-DSL
            hsPkgs.ioctl
          ];
          build-tools = [
            hsPkgs.buildPackages.hsc2hs
          ];
        };
      };
    }