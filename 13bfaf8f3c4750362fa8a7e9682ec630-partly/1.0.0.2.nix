{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "partly";
          version = "1.0.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2012 Tim Dixon";
        maintainer = "Tim Dixon <tdixon51793@gmail.com>";
        author = "Tim Dixon <tdixon51793@gmail.com>";
        homepage = "https://github.com/startling/partly";
        url = "";
        synopsis = "Inspect, create, and alter MBRs.";
        description = "A Haskell library and command-line tool to create, inspect, and alter master boot records.";
        buildType = "Simple";
      };
      components = {
        partly = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.binary
          ];
        };
        exes = {
          partly = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.binary
              hsPkgs.aeson
              hsPkgs.aeson-pretty
              hsPkgs.vector
              hsPkgs.base64-bytestring
              hsPkgs.optparse-applicative
            ];
          };
        };
        tests = {
          test-partly-lib = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.binary
              hsPkgs.QuickCheck
            ];
          };
          test-partly-json = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.binary
              hsPkgs.aeson
              hsPkgs.vector
              hsPkgs.base64-bytestring
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }