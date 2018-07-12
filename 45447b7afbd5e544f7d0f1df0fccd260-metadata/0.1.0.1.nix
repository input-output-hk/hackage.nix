{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "metadata";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "cutsea110@gmail.com";
        author = "Katsutoshi Itoh";
        homepage = "https://github.com/cutsea110/metadata";
        url = "";
        synopsis = "metadata library for semantic web.";
        description = "metadata library for semantic web.";
        buildType = "Simple";
      };
      components = {
        "metadata" = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.time
          ];
        };
      };
    }