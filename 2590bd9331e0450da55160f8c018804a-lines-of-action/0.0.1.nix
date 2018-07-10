{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "lines-of-action";
          version = "0.0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Joe Vargas";
        author = "Joe Vargas";
        homepage = "https://github.com/jxv/lines-of-action#readme";
        url = "";
        synopsis = "Lines of Action, 2-player strategy board game";
        description = "Lines of Action, 2-player strategy board game. mtl style code.";
        buildType = "Simple";
      };
      components = {
        lines-of-action = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.safe
          ];
        };
      };
    }