{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hworker";
          version = "0.1.0.1";
        };
        license = "ISC";
        copyright = "";
        maintainer = "dbp@dbpmail.net";
        author = "Daniel Patterson";
        homepage = "http://github.com/dbp/hworker";
        url = "";
        synopsis = "A reliable at-least-once job queue built on top of redis.";
        description = "See README.";
        buildType = "Simple";
      };
      components = {
        hworker = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.hedis
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.time
            hsPkgs.attoparsec
            hsPkgs.uuid
          ];
        };
        tests = {
          hworker-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.hedis
              hsPkgs.text
              hsPkgs.bytestring
              hsPkgs.time
              hsPkgs.attoparsec
              hsPkgs.uuid
              hsPkgs.hspec
              hsPkgs.hspec-contrib
              hsPkgs.HUnit
            ];
          };
        };
      };
    }