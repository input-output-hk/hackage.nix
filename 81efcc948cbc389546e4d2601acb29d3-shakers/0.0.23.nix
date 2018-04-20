{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.22";
        identifier = {
          name = "shakers";
          version = "0.0.23";
        };
        license = "MIT";
        copyright = "Copyright (C) 2016 Swift Navigation, Inc.";
        maintainer = "Mark Fine <dev@swiftnav.com>";
        author = "Swift Navigation Inc.";
        homepage = "https://github.com/swift-nav/shakers";
        url = "";
        synopsis = "Shake helpers.";
        description = "Primitive helpers for Shake files.";
        buildType = "Simple";
      };
      components = {
        shakers = {
          depends  = [
            hsPkgs.base
            hsPkgs.basic-prelude
            hsPkgs.directory
            hsPkgs.shake
          ];
        };
        exes = {
          shake-shakers = {
            depends  = [
              hsPkgs.base
              hsPkgs.shakers
            ];
          };
        };
      };
    }