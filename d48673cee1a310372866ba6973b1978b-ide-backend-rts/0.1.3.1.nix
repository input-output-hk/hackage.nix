{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "ide-backend-rts";
          version = "0.1.3.1";
        };
        license = "MIT";
        copyright = "(c) 2015 FP Complete";
        maintainer = "Duncan Coutts <duncan@well-typed.com>";
        author = "Duncan Coutts, Mikolaj Konarski, Edsko de Vries";
        homepage = "";
        url = "";
        synopsis = "RTS for the IDE backend";
        description = "Add on package used internally. End users should not need to use this.";
        buildType = "Simple";
      };
      components = {
        "ide-backend-rts" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }