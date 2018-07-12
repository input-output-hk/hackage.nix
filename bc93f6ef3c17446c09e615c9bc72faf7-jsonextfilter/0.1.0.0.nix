{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "jsonextfilter";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "MackeyRMS";
        author = "Daniel Choi";
        homepage = "https://github.com/mackeyrms/jsonextfilter#readme";
        url = "";
        synopsis = "Filter select values in JSON objects to unix programs";
        description = "Filter select values in JSON objects to unix programs";
        buildType = "Simple";
      };
      components = {
        exes = {
          "jsonextfilter" = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.bytestring
              hsPkgs.attoparsec
              hsPkgs.containers
              hsPkgs.process
              hsPkgs.unordered-containers
              hsPkgs.text
              hsPkgs.vector
              hsPkgs.scientific
              hsPkgs.optparse-applicative
              hsPkgs.string-qq
              hsPkgs.monads-tf
            ];
          };
        };
      };
    }