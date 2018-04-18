{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "http-types";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "(C) 2011 Aristid Breitkreuz";
        maintainer = "aristidb@googlemail.com";
        author = "Aristid Breitkreuz";
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
          ];
        };
      };
    }