{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "reactive-io";
          version = "0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "roma@ro-che.info";
        author = "Roman Cheplyaka";
        homepage = "";
        url = "";
        synopsis = "IO-oriented FRP library";
        description = "IO-oriented FRP library";
        buildType = "Simple";
      };
      components = {
        reactive-io = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
          ];
        };
      };
    }