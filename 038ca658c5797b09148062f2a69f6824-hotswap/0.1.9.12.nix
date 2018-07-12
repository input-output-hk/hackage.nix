{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hotswap";
          version = "0.1.9.12";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "eleventynine@gmail.com";
        author = "Mike Ledger";
        homepage = "https://github.com/mikeplus64/hotswap";
        url = "";
        synopsis = "Simple code hotswapping.";
        description = "A simple, high-level interface to plugins.";
        buildType = "Simple";
      };
      components = {
        "hotswap" = {
          depends  = [
            hsPkgs.base
            hsPkgs.plugins
          ];
        };
      };
    }