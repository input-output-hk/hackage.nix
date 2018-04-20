{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "cookie";
          version = "0.4.4";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Michael Snoyman <michael@snoyman.com>";
        author = "Michael Snoyman <michael@snoyman.com>";
        homepage = "http://github.com/snoyberg/cookie";
        url = "";
        synopsis = "HTTP cookie parsing and rendering";
        description = "Hackage documentation generation is not reliable. For up to date documentation, please see: <https://www.stackage.org/package/cookie>.";
        buildType = "Simple";
      };
      components = {
        cookie = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.time
            hsPkgs.text
            hsPkgs.data-default-class
            hsPkgs.deepseq
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.bytestring
              hsPkgs.cookie
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
              hsPkgs.text
              hsPkgs.time
            ];
          };
        };
      };
    }