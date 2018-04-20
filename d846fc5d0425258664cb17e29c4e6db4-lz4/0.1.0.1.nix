{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "lz4";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "mwotton@gmail.com";
        author = "Mark Wotton";
        homepage = "http://github.com/mwotton/lz4hs";
        url = "";
        synopsis = "Haskell bindings to the lz4 compression library";
        description = "lz4 is a fast compression library, and can be found at\nhttp://code.google.com/p/lz4/\na version that adds a C library can be found at\nhttps://github.com/mwotton/lz4";
        buildType = "Simple";
      };
      components = {
        lz4 = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
          ];
          libs = [ pkgs.lz4 ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.hspec-discover
              hsPkgs.lz4
              hsPkgs.QuickCheck
              hsPkgs.hspec-shouldbe
              hsPkgs.bytestring
            ];
            libs = [ pkgs.lz4 ];
          };
        };
      };
    }