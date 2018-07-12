{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "quick-generator";
          version = "0.3";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2011 Yuriy Iskra";
        maintainer = "";
        author = "YuriyIskra";
        homepage = "";
        url = "";
        synopsis = "Generator random test data for QuickCheck";
        description = "Generator random test data for QuickCheck";
        buildType = "Simple";
      };
      components = {
        "quick-generator" = {
          depends  = [
            hsPkgs.base
            hsPkgs.QuickCheck
          ];
        };
      };
    }