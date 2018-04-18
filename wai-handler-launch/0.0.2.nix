{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "wai-handler-launch";
          version = "0.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "michael@snoyman.com";
        author = "Michael Snoyman";
        homepage = "";
        url = "";
        synopsis = "Launch a web app in the default browser.";
        description = "This handles cross-platform launching and inserts Javascript code to ping the server. When the server no longer receives pings, it shuts down.";
        buildType = "Simple";
      };
      components = {
        wai-handler-launch = {
          depends  = [
            hsPkgs.base
            hsPkgs.wai
            hsPkgs.warp
            hsPkgs.http-types
            hsPkgs.transformers
            hsPkgs.bytestring
            hsPkgs.blaze-builder
            hsPkgs.enumerator
            hsPkgs.blaze-builder-enumerator
            hsPkgs.zlib-enum
          ] ++ pkgs.lib.optional (!system.isWindows && !system.isOsx) hsPkgs.process;
          libs = pkgs.lib.optional system.isWindows pkgs.Shell32;
        };
      };
    }