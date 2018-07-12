{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hspec-shouldbe";
          version = "0.0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "";
        author = "";
        homepage = "";
        url = "";
        synopsis = "Convenience wrapper and utilities for hspec";
        description = "";
        buildType = "Simple";
      };
      components = {
        "hspec-shouldbe" = {
          depends  = [
            hsPkgs.hspec
            hsPkgs.test-shouldbe
          ];
        };
      };
    }