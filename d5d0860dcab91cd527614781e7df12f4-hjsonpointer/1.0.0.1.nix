{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hjsonpointer";
          version = "1.0.0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "ian@housejeffries.com";
        author = "Ian Grant Jeffries";
        homepage = "https://github.com/seagreen/hjsonpointer";
        url = "";
        synopsis = "JSON Pointer library";
        description = "";
        buildType = "Simple";
      };
      components = {
        "hjsonpointer" = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.QuickCheck
            hsPkgs.unordered-containers
            hsPkgs.text
            hsPkgs.vector
          ];
        };
        tests = {
          "unit" = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.hjsonpointer
              hsPkgs.QuickCheck
              hsPkgs.unordered-containers
              hsPkgs.text
              hsPkgs.vector
              hsPkgs.hspec
              hsPkgs.http-types
            ];
          };
        };
      };
    }