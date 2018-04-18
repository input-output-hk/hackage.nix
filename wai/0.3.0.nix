{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "wai";
          version = "0.3.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "michael@snoyman.com";
        author = "Michael Snoyman";
        homepage = "http://github.com/snoyberg/wai";
        url = "";
        synopsis = "Web Application Interface.";
        description = "Provides a common protocol for communication between web aplications and web servers.";
        buildType = "Simple";
      };
      components = {
        wai = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.blaze-builder
            hsPkgs.enumerator
            hsPkgs.network
          ];
        };
      };
    }