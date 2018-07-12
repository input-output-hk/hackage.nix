{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      buildtests = false;
      nolib = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "yaml";
          version = "0.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Michael Snoyman <michael@snoyman.com>";
        author = "Michael Snoyman <michael@snoyman.com>";
        homepage = "http://github.com/snoyberg/yaml/";
        url = "";
        synopsis = "Low-level binding to the libyaml C library.";
        description = "Provides support for parsing and emitting Yaml documents. Includes the full C library in the package so you don't need to worry about any non-Haskell dependencies.";
        buildType = "Simple";
      };
      components = {
        "yaml" = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.control-monad-failure
            hsPkgs.bytestring
          ];
        };
        exes = {
          "runtests" = {
            depends  = pkgs.lib.optionals _flags.buildtests [
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck
              hsPkgs.test-framework-hunit
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.base
              hsPkgs.transformers
              hsPkgs.control-monad-failure
              hsPkgs.bytestring
            ];
          };
        };
      };
    }