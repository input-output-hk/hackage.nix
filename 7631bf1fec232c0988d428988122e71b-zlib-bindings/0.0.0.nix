{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      test = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "zlib-bindings";
          version = "0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Michael Snoyman <michael@snoyman.com>";
        author = "Michael Snoyman <michael@snoyman.com>";
        homepage = "http://github.com/snoyberg/zlib-bindings";
        url = "";
        synopsis = "Low-level bindings to the zlib package.";
        description = "";
        buildType = "Simple";
      };
      components = {
        zlib-bindings = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.zlib
          ];
        };
        exes = {
          zlib-bindings-test = {
            depends  = pkgs.lib.optionals _flags.test [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.zlib
              hsPkgs.HTF
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }