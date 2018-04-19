{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "jsonsql";
          version = "0.1.2.1";
        };
        license = "MIT";
        copyright = "(c) 2014 Daniel Choi";
        maintainer = "dhchoi@gmail.com";
        author = "Daniel Choi";
        homepage = "https://github.com/danchoi/jsonsql";
        url = "";
        synopsis = "Interpolate JSON object values into SQL strings";
        description = "";
        buildType = "Simple";
      };
      components = {
        exes = {
          jsonsql = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.unordered-containers
              hsPkgs.containers
              hsPkgs.text
              hsPkgs.bytestring
              hsPkgs.attoparsec
              hsPkgs.vector
              hsPkgs.scientific
              hsPkgs.optparse-applicative
              hsPkgs.string-qq
              hsPkgs.HUnit
            ];
          };
        };
      };
    }