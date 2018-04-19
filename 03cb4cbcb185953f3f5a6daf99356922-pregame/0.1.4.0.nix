{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.18";
        identifier = {
          name = "pregame";
          version = "0.1.4.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "https://github.com/jxv";
        author = "Joe Vargas";
        homepage = "https://github.com/jxv/pregame";
        url = "";
        synopsis = "Prelude counterpart";
        description = "Excessive Prelude styled imports.";
        buildType = "Simple";
      };
      components = {
        pregame = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.data-default
            hsPkgs.mtl
            hsPkgs.lens
            hsPkgs.parallel
            hsPkgs.safe
            hsPkgs.stm
            hsPkgs.transformers
            hsPkgs.text
            hsPkgs.tuple
            hsPkgs.vector
          ];
        };
      };
    }