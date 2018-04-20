{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "wai";
          version = "1.3.0.3";
        };
        license = "MIT";
        copyright = "";
        maintainer = "michael@snoyman.com";
        author = "Michael Snoyman";
        homepage = "https://github.com/yesodweb/wai";
        url = "";
        synopsis = "Web Application Interface.";
        description = "Provides a common protocol for communication between web applications and web servers.";
        buildType = "Simple";
      };
      components = {
        wai = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.blaze-builder
            hsPkgs.conduit
            hsPkgs.network
            hsPkgs.http-types
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.vault
          ];
        };
      };
    }