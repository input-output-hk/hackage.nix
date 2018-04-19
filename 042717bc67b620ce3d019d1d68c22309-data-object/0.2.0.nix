{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      buildtests = false;
      nolib = false;
    } // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "data-object";
          version = "0.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Michael Snoyman <michael@snoyman.com>";
        author = "Michael Snoyman, Nicolas Pouillard";
        homepage = "http://github.com/snoyberg/data-object/tree/master";
        url = "";
        synopsis = "Represent hierachichal structures, called objects in JSON.";
        description = "These objects show up in different places, eg JSON, Yaml.\nBy providing a representation in a separate repository,\nother libraries can share a single representation of\nthese structures.";
        buildType = "Simple";
      };
      components = {
        data-object = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.time
            hsPkgs.safe-failure
            hsPkgs.old-locale
            hsPkgs.syb
            hsPkgs.attempt
            hsPkgs.convertible-text
            hsPkgs.template-haskell
          ];
        };
        exes = {
          runtests = {
            depends  = pkgs.lib.optionals _flags.buildtests [
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