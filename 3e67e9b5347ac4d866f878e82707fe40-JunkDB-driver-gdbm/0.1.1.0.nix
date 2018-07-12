{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "JunkDB-driver-gdbm";
          version = "0.1.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "seagull.kamome@gmail.com";
        author = "HATTORI, Hiroki";
        homepage = "";
        url = "";
        synopsis = "";
        description = "Generic KVS API";
        buildType = "Simple";
      };
      components = {
        "JunkDB-driver-gdbm" = {
          depends  = [
            hsPkgs.base
            hsPkgs.JunkDB
            hsPkgs.mtl
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.bytestring
            hsPkgs.conduit
            hsPkgs.resourcet
          ];
        };
      };
    }