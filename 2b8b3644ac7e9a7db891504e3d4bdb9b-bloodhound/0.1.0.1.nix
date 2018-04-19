{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "bloodhound";
          version = "0.1.0.1";
        };
        license = "Apache-2.0";
        copyright = "2014, Chris Allen";
        maintainer = "cma@bitemyapp.com";
        author = "Chris Allen";
        homepage = "github.com/bitemyapp/bloodhound";
        url = "";
        synopsis = "ElasticSearch client library for Haskell";
        description = "ElasticSearch made awesome for Haskell hackers";
        buildType = "Simple";
      };
      components = {
        bloodhound = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.aeson
            hsPkgs.aeson-pretty
            hsPkgs.conduit
            hsPkgs.http-conduit
            hsPkgs.time
            hsPkgs.text
            hsPkgs.http-types
            hsPkgs.blaze-builder
            hsPkgs.unix
            hsPkgs.scientific
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.bloodhound
              hsPkgs.http-conduit
              hsPkgs.http-types
              hsPkgs.bytestring
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.text
              hsPkgs.time
              hsPkgs.aeson
              hsPkgs.aeson-pretty
              hsPkgs.random
              hsPkgs.quickcheck-instances
            ];
          };
        };
      };
    }