{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "servant-aeson-specs";
          version = "0.5.0.0";
        };
        license = "MIT";
        copyright = "Plow Technologies";
        maintainer = "soenkehahn@gmail.com, mchaver@gmail.com";
        author = "Sönke Hahn, James M.C. Haver II";
        homepage = "https://github.com/plow-technologies/servant-aeson-specs#readme";
        url = "";
        synopsis = "generic tests for aeson serialization in servant";
        description = "tests for aeson serialization in servant";
        buildType = "Simple";
      };
      components = {
        "servant-aeson-specs" = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.bytestring
            hsPkgs.hspec
            hsPkgs.QuickCheck
            hsPkgs.servant
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.random
            hsPkgs.aeson-pretty
            hsPkgs.quickcheck-arbitrary-adt
            hsPkgs.hspec-golden-aeson
          ];
        };
        tests = {
          "spec" = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.bytestring
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.servant
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.random
              hsPkgs.aeson-pretty
              hsPkgs.quickcheck-arbitrary-adt
              hsPkgs.hspec-golden-aeson
              hsPkgs.hspec-core
              hsPkgs.temporary
              hsPkgs.doctest
              hsPkgs.mockery
              hsPkgs.silently
              hsPkgs.quickcheck-instances
              hsPkgs.string-conversions
              hsPkgs.text
              hsPkgs.quickcheck-arbitrary-adt
              hsPkgs.hspec-golden-aeson
            ];
          };
        };
      };
    }