{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hslua-aeson";
          version = "0.1.0.3";
        };
        license = "MIT";
        copyright = "© 2017 Albert Krewinkel";
        maintainer = "tarleb+hslua@zeitkraut.de";
        author = "Albert Krewinkel";
        homepage = "https://github.com/tarleb/hslua-aeson#readme";
        url = "";
        synopsis = "Glue between aeson and hslua";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        hslua-aeson = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.hashable
            hsPkgs.hslua
            hsPkgs.scientific
            hsPkgs.text
            hsPkgs.unordered-containers
            hsPkgs.vector
          ];
        };
        tests = {
          hslua-aeson-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.quickcheck-instances
              hsPkgs.aeson
              hsPkgs.hashable
              hsPkgs.hslua
              hsPkgs.hslua-aeson
              hsPkgs.ieee754
              hsPkgs.scientific
              hsPkgs.text
              hsPkgs.unordered-containers
              hsPkgs.vector
            ];
          };
        };
      };
    }