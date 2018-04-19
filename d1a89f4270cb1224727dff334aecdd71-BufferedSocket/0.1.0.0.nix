{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "BufferedSocket";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "tomas.o.more@gmail.com";
        author = "Tomas Möre";
        homepage = "";
        url = "";
        synopsis = "BROKEN VERSION";
        description = "THIS VERSION IS BROKEN DO NOT USE!";
        buildType = "Simple";
      };
      components = {
        BufferedSocket = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.network
          ];
        };
      };
    }