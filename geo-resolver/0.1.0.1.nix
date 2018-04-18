{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "geo-resolver";
          version = "0.1.0.1";
        };
        license = "MIT";
        copyright = "2015 Jan Greve, Markenwerk GmbH";
        maintainer = "jg@markenwerk.net";
        author = "Jan Greve";
        homepage = "https://github.com/markenwerk/haskell-geo-resolver/";
        url = "";
        synopsis = "Performs geo location lookups and parses the results";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        geo-resolver = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.http-conduit
            hsPkgs.bytestring
            hsPkgs.unordered-containers
            hsPkgs.text
            hsPkgs.http-types
            hsPkgs.blaze-builder
          ];
        };
        tests = {
          GeoResolver-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.geo-resolver
              hsPkgs.bytestring
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.test-framework-quickcheck2
              hsPkgs.base64-bytestring
            ];
          };
        };
      };
    }