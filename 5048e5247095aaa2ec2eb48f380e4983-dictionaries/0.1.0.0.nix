{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      dev = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "dictionaries";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "zohl@fmap.me";
        author = "Al Zohali";
        homepage = "";
        url = "";
        synopsis = "Tools to handle StarDict dictionaries.";
        description = "";
        buildType = "Simple";
      };
      components = {
        dictionaries = {
          depends  = [
            hsPkgs.base
            hsPkgs.attoparsec
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.data-default
            hsPkgs.directory
            hsPkgs.exceptions
            hsPkgs.filepath
            hsPkgs.text
            hsPkgs.time
            hsPkgs.zlib
          ];
        };
      };
    }