{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "fast-logger";
          version = "2.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Kazu Yamamoto <kazu@iij.ad.jp>";
        author = "Kazu Yamamoto <kazu@iij.ad.jp>";
        homepage = "";
        url = "";
        synopsis = "A fast logging system";
        description = "A fast logging system";
        buildType = "Simple";
      };
      components = {
        fast-logger = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.blaze-builder
            hsPkgs.bytestring
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.text
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.fast-logger
              hsPkgs.hspec
            ];
          };
        };
      };
    }