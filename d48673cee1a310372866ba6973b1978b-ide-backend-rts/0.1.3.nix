{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "ide-backend-rts";
          version = "0.1.3";
        };
        license = "MIT";
        copyright = "(c) 2015 FP Complete";
        maintainer = "Duncan Coutts <duncan@well-typed.com>";
        author = "Duncan Coutts, Mikolaj Konarski, Edsko de Vries";
        homepage = "";
        url = "";
        synopsis = "RTS for the IDE backend";
        description = "";
        buildType = "Simple";
      };
      components = {
        ide-backend-rts = {
          depends  = [ hsPkgs.base ];
        };
      };
    }