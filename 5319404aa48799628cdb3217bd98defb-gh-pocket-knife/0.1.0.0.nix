{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "gh-pocket-knife";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Pat Brisbin <pbrisbin@gmail.com>";
        maintainer = "pbrisbin@gmail.com";
        author = "Pat Brisbin";
        homepage = "https://github.com/pbrisbin/gh-pocket-knife#readme";
        url = "";
        synopsis = "Script helpers for interacting with GitHub";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        gh-pocket-knife = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.resourcet
            hsPkgs.aeson
            hsPkgs.http-conduit
          ];
        };
        exes = {
          gh-pocket-knife = {
            depends  = [
              hsPkgs.base
              hsPkgs.gh-pocket-knife
              hsPkgs.aeson
              hsPkgs.bytestring
            ];
          };
        };
        tests = {
          gh-pocket-knife-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.gh-pocket-knife
              hsPkgs.hspec
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }