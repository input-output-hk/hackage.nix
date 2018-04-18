{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "github-types";
          version = "0.2.1";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "tomas.carnecky@gmail.com";
        author = "Tomas Carnecky";
        homepage = "";
        url = "";
        synopsis = "Type definitions for objects used by the GitHub v3 API";
        description = "This package includes (some) type definitions for objects\nwhich are consumed or produced by the GitHub v3 API.";
        buildType = "Simple";
      };
      components = {
        github-types = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.text
            hsPkgs.time
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.aeson
              hsPkgs.aeson-pretty
              hsPkgs.smallcheck
              hsPkgs.hspec-smallcheck
              hsPkgs.vector
              hsPkgs.text
              hsPkgs.unordered-containers
              hsPkgs.time
              hsPkgs.http-conduit
            ];
          };
        };
      };
    }