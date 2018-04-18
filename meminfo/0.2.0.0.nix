{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "meminfo";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "lukec@themk.net";
        author = "Luke Clifton";
        homepage = "";
        url = "";
        synopsis = "Library for reading `/proc/meminfo`";
        description = "Library for reading `/proc/meminfo`";
        buildType = "Simple";
      };
      components = {
        meminfo = {
          depends  = [
            hsPkgs.base
            hsPkgs.attoparsec
            hsPkgs.bytestring
            hsPkgs.containers
          ];
        };
      };
    }