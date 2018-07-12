{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      es1 = false;
      es5 = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "bloodhound";
          version = "0.16.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2018 Chris Allen";
        maintainer = "cma@bitemyapp.com";
        author = "Chris Allen";
        homepage = "https://github.com/bitemyapp/bloodhound";
        url = "";
        synopsis = "Elasticsearch client library for Haskell";
        description = "Elasticsearch made awesome for Haskell hackers";
        buildType = "Simple";
      };
      components = {
        "bloodhound" = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.blaze-builder
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.exceptions
            hsPkgs.hashable
            hsPkgs.http-client
            hsPkgs.http-types
            hsPkgs.mtl
            hsPkgs.network-uri
            hsPkgs.scientific
            hsPkgs.semigroups
            hsPkgs.semver
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.unordered-containers
            hsPkgs.vector
          ];
        };
        tests = {
          "bloodhound-tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.QuickCheck
              hsPkgs.aeson
              hsPkgs.bloodhound
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.errors
              hsPkgs.exceptions
              hsPkgs.hspec
              hsPkgs.http-client
              hsPkgs.http-types
              hsPkgs.microlens
              hsPkgs.microlens-aeson
              hsPkgs.mtl
              hsPkgs.network-uri
              hsPkgs.pretty-simple
              hsPkgs.quickcheck-arbitrary-template
              hsPkgs.quickcheck-properties
              hsPkgs.semigroups
              hsPkgs.semver
              hsPkgs.temporary
              hsPkgs.text
              hsPkgs.time
              hsPkgs.unix-compat
              hsPkgs.unordered-containers
              hsPkgs.vector
            ];
          };
        };
      };
    }