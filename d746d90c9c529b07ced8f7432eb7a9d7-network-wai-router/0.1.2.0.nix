{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "network-wai-router";
          version = "0.1.2.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "grogers385@gmail.com";
        author = "George Rogers";
        homepage = "";
        url = "";
        synopsis = "A routing library for wai";
        description = "";
        buildType = "Simple";
      };
      components = {
        network-wai-router = {
          depends  = [
            hsPkgs.base
            hsPkgs.wai
          ];
        };
      };
    }