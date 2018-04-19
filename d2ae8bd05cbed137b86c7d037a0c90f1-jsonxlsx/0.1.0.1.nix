{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "jsonxlsx";
          version = "0.1.0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Mackey RMS";
        author = "Daniel Choi";
        homepage = "https://github.com/mackeyrms/jsonxlsx#readme";
        url = "";
        synopsis = "json to xlsx converter";
        description = "json to xlsx converter";
        buildType = "Simple";
      };
      components = {
        exes = {
          jsonxlsx = {
            depends  = [
              hsPkgs.base
              hsPkgs.xlsx
              hsPkgs.containers
              hsPkgs.old-time
              hsPkgs.time
              hsPkgs.bytestring
              hsPkgs.aeson
              hsPkgs.attoparsec
              hsPkgs.unordered-containers
              hsPkgs.string-qq
              hsPkgs.optparse-applicative
              hsPkgs.vector
              hsPkgs.scientific
              hsPkgs.HUnit
              hsPkgs.text
            ];
          };
        };
      };
    }