{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "http-types";
          version = "0.8.0";
        };
        license = "BSD-3-Clause";
        copyright = "(C) 2011 Aristid Breitkreuz";
        maintainer = "aristidb@googlemail.com";
        author = "Aristid Breitkreuz, Michael Snoyman";
        homepage = "https://github.com/aristidb/http-types";
        url = "";
        synopsis = "Generic HTTP types for Haskell (for both client and server code).";
        description = "Generic HTTP types for Haskell (for both client and server code).";
        buildType = "Simple";
      };
      components = {
        http-types = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.array
            hsPkgs.case-insensitive
            hsPkgs.blaze-builder
            hsPkgs.text
          ];
        };
        tests = {
          runtests = {
            depends  = [
              hsPkgs.base
              hsPkgs.http-types
              hsPkgs.text
              hsPkgs.bytestring
              hsPkgs.blaze-builder
              hsPkgs.QuickCheck
              hsPkgs.hspec
            ];
          };
        };
      };
    }