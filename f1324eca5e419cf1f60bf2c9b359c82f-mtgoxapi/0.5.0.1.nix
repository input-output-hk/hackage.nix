{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "mtgoxapi";
          version = "0.5.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2012 - 2014 Jan Vornberger";
        maintainer = "Jan Vornberger <jan@uos.de>";
        author = "Jan Vornberger <jan@uos.de>";
        homepage = "";
        url = "";
        synopsis = "Library to communicate with Mt.Gox";
        description = "See Network.MtGoxAPI for documentation.";
        buildType = "Simple";
      };
      components = {
        mtgoxapi = {
          depends  = [
            hsPkgs.base
            hsPkgs.time
            hsPkgs.bytestring
            hsPkgs.vector
            hsPkgs.text
            hsPkgs.unordered-containers
            hsPkgs.attoparsec
            hsPkgs.network
            hsPkgs.hashable
            hsPkgs.aeson
            hsPkgs.base64-bytestring
            hsPkgs.base16-bytestring
            hsPkgs.SHA
            hsPkgs.ixset
            hsPkgs.curl
            hsPkgs.HTTP
            hsPkgs.transformers
            hsPkgs.either
            hsPkgs.errors
            hsPkgs.watchdog
          ];
        };
        tests = {
          testsuite = {
            depends  = [
              hsPkgs.base
              hsPkgs.time
              hsPkgs.bytestring
              hsPkgs.vector
              hsPkgs.text
              hsPkgs.unordered-containers
              hsPkgs.attoparsec
              hsPkgs.network
              hsPkgs.hashable
              hsPkgs.aeson
              hsPkgs.base64-bytestring
              hsPkgs.base16-bytestring
              hsPkgs.SHA
              hsPkgs.ixset
              hsPkgs.curl
              hsPkgs.HTTP
              hsPkgs.transformers
              hsPkgs.errors
              hsPkgs.watchdog
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
            ];
          };
        };
      };
    }