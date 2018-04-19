{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.22";
        identifier = {
          name = "ntrip-client";
          version = "0.1.5";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2016 Swift Navigation, Inc.";
        maintainer = "Mark Fine <dev@swiftnav.com>";
        author = "Swift Navigation Inc.";
        homepage = "";
        url = "";
        synopsis = "NTRIP client.";
        description = "Networked Transport of RTCM via Internet Protocol client.";
        buildType = "Simple";
      };
      components = {
        ntrip-client = {
          depends  = [
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.base64-bytestring
            hsPkgs.basic-prelude
            hsPkgs.bytestring
            hsPkgs.case-insensitive
            hsPkgs.conduit
            hsPkgs.conduit-extra
            hsPkgs.exceptions
            hsPkgs.http-types
            hsPkgs.lens
            hsPkgs.lifted-async
            hsPkgs.monad-control
            hsPkgs.uri-bytestring
          ];
        };
        exes = {
          ntrip-client = {
            depends  = [
              hsPkgs.base
              hsPkgs.basic-prelude
              hsPkgs.bytestring
              hsPkgs.conduit
              hsPkgs.ntrip-client
              hsPkgs.optparse-generic
            ];
          };
        };
      };
    }