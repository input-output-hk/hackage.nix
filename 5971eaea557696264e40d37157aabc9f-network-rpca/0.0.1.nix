{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "network-rpca";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "";
        author = "Adam Langley <agl@imperialviolet.org>";
        homepage = "";
        url = "";
        synopsis = "A cross-platform RPC library";
        description = "A cross-platform RPC library";
        buildType = "Custom";
      };
      components = {
        network-rpca = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.array
            hsPkgs.bytestring
            hsPkgs.codec-libevent
            hsPkgs.network-bytestring
            hsPkgs.network
            hsPkgs.control-timeout
            hsPkgs.stm
            hsPkgs.binary
            hsPkgs.binary-strict
          ];
        };
      };
    }