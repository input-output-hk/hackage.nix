{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "semver-range";
          version = "0.2.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "anelson@narrativescience.com";
        author = "Allen Nelson";
        homepage = "";
        url = "";
        synopsis = "An implementation of semver and semantic version ranges.";
        description = "";
        buildType = "Simple";
      };
      components = {
        semver-range = {
          depends  = [
            hsPkgs.base
            hsPkgs.classy-prelude
            hsPkgs.text
            hsPkgs.unordered-containers
            hsPkgs.parsec
          ];
        };
        tests = {
          unit-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.classy-prelude
              hsPkgs.text
              hsPkgs.unordered-containers
              hsPkgs.parsec
              hsPkgs.hspec
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }