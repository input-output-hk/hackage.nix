{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "kawhi";
          version = "0.0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "aaron@hamsterdam.co";
        author = "Aaron Taylor";
        homepage = "https://github.com/hamsterdam/kawhi";
        url = "";
        synopsis = "stats.NBA.com library";
        description = "Functions and types for interacting with stats.NBA.com";
        buildType = "Simple";
      };
      components = {
        "kawhi" = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.bytestring
            hsPkgs.exceptions
            hsPkgs.http-conduit
            hsPkgs.http-client
            hsPkgs.http-types
            hsPkgs.mtl
            hsPkgs.safe
            hsPkgs.scientific
            hsPkgs.text
          ];
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.kawhi
              hsPkgs.aeson
              hsPkgs.bytestring
              hsPkgs.exceptions
              hsPkgs.http-client
              hsPkgs.http-types
              hsPkgs.mtl
              hsPkgs.scientific
              hsPkgs.smallcheck
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
              hsPkgs.tasty-smallcheck
              hsPkgs.text
            ];
          };
        };
      };
    }