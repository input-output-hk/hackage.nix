{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "digestive-functors-lucid";
          version = "0.0.0.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Athan Clark <athan.clark@gmail.com>";
        author = "Athan Clark <athan.clark@gmail.com>";
        homepage = "https://github.com/athanclark/digestive-functors-lucid";
        url = "";
        synopsis = "Lucid frontend for the digestive-functors library";
        description = "Ludic frontend for the digestive-functors library";
        buildType = "Simple";
      };
      components = {
        "digestive-functors-lucid" = {
          depends  = [
            hsPkgs.base
            hsPkgs.lucid
            hsPkgs.digestive-functors
            hsPkgs.text
          ];
        };
      };
    }