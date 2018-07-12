{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "rest-wai";
          version = "0.1.0.7";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "code@silk.co";
        author = "";
        homepage = "";
        url = "";
        synopsis = "Rest driver for WAI applications.";
        description = "Rest driver for WAI applications.";
        buildType = "Simple";
      };
      components = {
        "rest-wai" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.case-insensitive
            hsPkgs.containers
            hsPkgs.http-types
            hsPkgs.mime-types
            hsPkgs.mtl
            hsPkgs.rest-core
            hsPkgs.text
            hsPkgs.unordered-containers
            hsPkgs.wai
          ];
        };
      };
    }