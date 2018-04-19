{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      buildtests = false;
    } // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "data-object-yaml";
          version = "0.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Michael Snoyman <michael@snoyman.com>";
        author = "Michael Snoyman <michael@snoyman.com>";
        homepage = "http://github.com/snoyberg/data-object-yaml";
        url = "";
        synopsis = "Serialize data to and from Yaml files";
        description = "Provides high level conversions based on the data-object package. Parsing and emitting is handled by the yaml package, which in turn uses the libyaml C library.";
        buildType = "Simple";
      };
      components = {
        data-object-yaml = {
          depends  = [
            hsPkgs.base
            hsPkgs.data-object
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.convertible-text
            hsPkgs.attempt
            hsPkgs.failure
            hsPkgs.transformers
            hsPkgs.yaml
          ];
        };
        exes = {
          runtests = {
            depends  = optionals _flags.buildtests [
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck
              hsPkgs.test-framework-hunit
              hsPkgs.HUnit
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }