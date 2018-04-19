{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "sbp2udp";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "mark@swift-nav.com";
        author = "";
        homepage = "";
        url = "";
        synopsis = "SBP to UDP";
        description = "SBP to UDP";
        buildType = "Simple";
      };
      components = {
        exes = {
          sbp2udp = {
            depends  = [
              hsPkgs.base
              hsPkgs.basic-prelude
              hsPkgs.binary
              hsPkgs.binary-conduit
              hsPkgs.bytestring
              hsPkgs.conduit
              hsPkgs.conduit-extra
              hsPkgs.network
              hsPkgs.optparse-generic
              hsPkgs.protolude
              hsPkgs.resourcet
              hsPkgs.sbp
              hsPkgs.streaming-commons
            ];
          };
        };
      };
    }