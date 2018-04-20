{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "quick-schema";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "(c) 2015 Ben Weitzman";
        maintainer = "benweitzman@gmail.com";
        author = "Ben Weitzman";
        homepage = "https://github.com/benweitzman/quick-schema";
        url = "";
        synopsis = "Slimmed down json schema language and validator";
        description = "";
        buildType = "Simple";
      };
      components = {
        quick-schema = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.unordered-containers
            hsPkgs.text
            hsPkgs.vector
            hsPkgs.hashable
            hsPkgs.scientific
          ];
        };
        tests = {
          hspec = {
            depends  = [
              hsPkgs.base
              hsPkgs.quick-schema
              hsPkgs.hspec
              hsPkgs.aeson
              hsPkgs.QuickCheck
              hsPkgs.vector
              hsPkgs.text
              hsPkgs.scientific
              hsPkgs.unordered-containers
            ];
          };
        };
      };
    }