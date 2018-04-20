{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      buildtests = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "web-routes-quasi";
          version = "0.7.1";
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
            hsPkgs.template-haskell
            hsPkgs.path-pieces
            hsPkgs.text
          ];
        };
        exes = {
          runtests = {
            depends  = pkgs.lib.optionals _flags.buildtests [
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