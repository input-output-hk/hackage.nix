{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      buildtests = false;
    } // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "web-encodings";
          version = "0.2.6.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Michael Snoyman <michael@snoyman.com>";
        author = "Michael Snoyman <michael@snoyman.com>";
        homepage = "http://github.com/snoyberg/web-encodings/tree/master";
        url = "";
        synopsis = "Encapsulate multiple web encoding in a single package.";
        description = "The idea is to minimize external dependencies so this is usable in just about any context.";
        buildType = "Simple";
      };
      components = {
        web-encodings = {
          depends  = [
            hsPkgs.base
            hsPkgs.time
            hsPkgs.old-locale
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.failure
            hsPkgs.wai
            hsPkgs.directory
          ];
        };
        exes = {
          runtests = {
            depends  = optionals _flags.buildtests [
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.test-framework-hunit
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.convertible-text
            ];
          };
        };
      };
    }