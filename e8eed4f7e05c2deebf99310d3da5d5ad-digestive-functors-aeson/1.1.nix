{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "digestive-functors-aeson";
          version = "1.1";
        };
        license = "GPL-3.0-only";
        copyright = "Copyright (C) 2012 Oliver Charles";
        maintainer = "Oliver Charles <ollie@ocharles.org.uk>";
        author = "Oliver Charles";
        homepage = "http://github.com/ocharles/digestive-functors-aeson";
        url = "";
        synopsis = "Run digestive-functors forms against JSON";
        description = "This package allows you to run a form created by digestive functors against a\nJSON document that has been parsed by Aeson.\n\nFor changes, please see http://github.com/ocharles/changelog.md";
        buildType = "Simple";
      };
      components = {
        "digestive-functors-aeson" = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.aeson-lens
            hsPkgs.base
            hsPkgs.digestive-functors
            hsPkgs.lens
            hsPkgs.safe
            hsPkgs.text
            hsPkgs.vector
          ];
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.digestive-functors
              hsPkgs.digestive-functors-aeson
              hsPkgs.HUnit
              hsPkgs.mtl
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.text
            ];
          };
        };
      };
    }