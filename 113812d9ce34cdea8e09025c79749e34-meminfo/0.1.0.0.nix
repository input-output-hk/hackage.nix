{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "meminfo";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "ltclifton@gmail.com";
        author = "Luke Clifton";
        homepage = "";
        url = "";
        synopsis = "Library for reading /proc/meminfo";
        description = "Library for reading /proc/meminfo";
        buildType = "Simple";
      };
      components = {
        "meminfo" = {
          depends  = [
            hsPkgs.base
            hsPkgs.attoparsec
            hsPkgs.bytestring
            hsPkgs.containers
          ];
        };
      };
    }