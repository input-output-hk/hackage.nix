{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      buildtests = false;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "web-routes-quasi";
          version = "0.5.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Michael Snoyman <michael@snoyman.com>";
        author = "Michael Snoyman <michael@snoyman.com>";
        homepage = "http://docs.yesodweb.com/web-routes-quasi/";
        url = "";
        synopsis = "Define data types and parse/build functions for web-routes via a quasi-quoted DSL";
        description = "";
        buildType = "Simple";
      };
      components = {
        web-routes-quasi = {
          depends  = [
            hsPkgs.base
            hsPkgs.web-routes
            hsPkgs.template-haskell
          ];
        };
        exes = {
          runtests = {
            depends  = optionals _flags.buildtests [
              hsPkgs.QuickCheck
              hsPkgs.HUnit
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
              hsPkgs.bytestring
              hsPkgs.wai
              hsPkgs.web-encodings
              hsPkgs.wai-extra
            ];
          };
        };
      };
    }