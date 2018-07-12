{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "cj-token";
          version = "0.0.1";
        };
        license = "ISC";
        copyright = "";
        maintainer = "Author name here";
        author = "";
        homepage = "";
        url = "";
        synopsis = "A new Haskeleton package.";
        description = "cj-token is a new Haskeleton package.";
        buildType = "Simple";
      };
      components = {
        "cj-token" = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.base64-bytestring
            hsPkgs.containers
            hsPkgs.either
            hsPkgs.jwt
            hsPkgs.text
            hsPkgs.time
            hsPkgs.text-conversions
          ];
        };
        exes = {
          "cj-token" = {
            depends  = [
              hsPkgs.base
              hsPkgs.cj-token
            ];
          };
        };
        tests = {
          "cj-token-test-suite" = {
            depends  = [
              hsPkgs.base
              hsPkgs.jwt
              hsPkgs.hspec
              hsPkgs.time
              hsPkgs.text
              hsPkgs.text-conversions
              hsPkgs.QuickCheck
              hsPkgs.cj-token
            ];
          };
        };
      };
    }