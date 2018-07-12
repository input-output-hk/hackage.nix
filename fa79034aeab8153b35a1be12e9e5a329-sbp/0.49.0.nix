{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "sbp";
          version = "0.49.0";
        };
        license = "MIT";
        copyright = "Copyright (C) 2015 Swift Navigation, Inc.";
        maintainer = "Mark Fine <dev@swiftnav.com>";
        author = "Swift Navigation Inc.";
        homepage = "https://github.com/swift-nav/libsbp";
        url = "";
        synopsis = "SwiftNav's SBP Library";
        description = "SwiftNav's SBP Library.";
        buildType = "Simple";
      };
      components = {
        "sbp" = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.data-binary-ieee754
            hsPkgs.monad-loops
          ];
        };
      };
    }