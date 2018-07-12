{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "scotty-cookie";
          version = "0.1.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "macs.martins@gmail.com";
        author = "Mārtiņš Mačs";
        homepage = "https://github.com/mmartin/scotty-cookie";
        url = "";
        synopsis = "Cookie management helper functions for Scotty framework";
        description = "Cookie management helper functions for Scotty framework";
        buildType = "Simple";
      };
      components = {
        "scotty-cookie" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.transformers
            hsPkgs.text
            hsPkgs.time
            hsPkgs.blaze-builder
            hsPkgs.scotty
            hsPkgs.cookie
          ];
        };
      };
    }