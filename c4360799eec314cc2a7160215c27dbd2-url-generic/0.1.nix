{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "url-generic";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2010 Chris Done";
        maintainer = "none";
        author = "Chris Done";
        homepage = "";
        url = "";
        synopsis = "Parse/format generic key/value URLs from record data types.";
        description = "Parse\\/format generic key\\/value URLs from record data types.";
        buildType = "Simple";
      };
      components = {
        url-generic = {
          depends  = [
            hsPkgs.base
            hsPkgs.syb
            hsPkgs.mtl
          ];
        };
      };
    }