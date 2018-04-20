{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "data-concurrent-queue";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "";
        author = "George Rogers";
        homepage = "";
        url = "";
        synopsis = "A Library for directional queues";
        description = "";
        buildType = "Simple";
      };
      components = {
        data-concurrent-queue = {
          depends  = [
            hsPkgs.base
            hsPkgs.stm
          ];
        };
      };
    }