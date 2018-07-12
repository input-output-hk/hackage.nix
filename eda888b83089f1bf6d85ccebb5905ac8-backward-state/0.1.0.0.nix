{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "backward-state";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "lrpalmer@gmail.com";
        author = "Luke Palmer";
        homepage = "https://github.com/luqui/backward-state";
        url = "";
        synopsis = "A state monad that runs the state in reverse through the computation";
        description = "";
        buildType = "Simple";
      };
      components = {
        "backward-state" = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
          ];
        };
      };
    }