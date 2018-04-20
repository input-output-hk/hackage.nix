{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "sbp";
          version = "0.50.2";
        };
        license = "LGPL-3.0-only";
        copyright = "Copyright (C) 2015 Swift Navigation, Inc.";
        maintainer = "Mark Fine <dev@swiftnav.com>";
        author = "Swift Navigation Inc.";
        homepage = "https://github.com/swift-nav/libsbp";
        url = "";
        synopsis = "SwiftNav's SBP Library";
        description = "Haskell bindings for Swift Navigation Binary Protocol (SBP), a fast,\nsimple, and minimal binary protocol for communicating with Swift\ndevices. It is the native binary protocol used by the Piksi GPS\nreceiver to transmit solutions, observations, status and debugging\nmessages, as well as receive messages from the host operating\nsystem, such as differential corrections and the almanac.";
        buildType = "Simple";
      };
      components = {
        sbp = {
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