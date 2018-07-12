{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hxt-pickle-utils";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2014, Silk";
        maintainer = "code@silk.co";
        author = "Silk";
        homepage = "https://github.com/silkapp/hxt-pickle-utils";
        url = "";
        synopsis = "Utility functions for using HXT picklers.";
        description = "Utility functions for using HXT picklers.";
        buildType = "Simple";
      };
      components = {
        "hxt-pickle-utils" = {
          depends  = [
            hsPkgs.base
            hsPkgs.hxt
            hsPkgs.mtl
          ];
        };
      };
    }