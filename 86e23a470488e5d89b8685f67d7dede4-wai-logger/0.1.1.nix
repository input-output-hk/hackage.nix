{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "wai-logger";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Kazu Yamamoto <kazu@iij.ad.jp>";
        author = "Kazu Yamamoto <kazu@iij.ad.jp>";
        homepage = "";
        url = "";
        synopsis = "A logging system for WAI";
        description = "A logging system for WAI";
        buildType = "Simple";
      };
      components = {
        "wai-logger" = {
          depends  = [
            hsPkgs.base
            hsPkgs.time
            hsPkgs.old-locale
            hsPkgs.bytestring
            hsPkgs.blaze-builder
            hsPkgs.wai
            hsPkgs.fast-logger
            hsPkgs.http-types
            hsPkgs.case-insensitive
            hsPkgs.network
            hsPkgs.byteorder
          ] ++ pkgs.lib.optional (!system.isWindows) hsPkgs.unix;
        };
      };
    }