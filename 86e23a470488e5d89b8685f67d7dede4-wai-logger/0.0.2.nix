{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "wai-logger";
          version = "0.0.2";
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
        wai-logger = {
          depends  = [
            hsPkgs.base
            hsPkgs.wai
            hsPkgs.http-types
            hsPkgs.bytestring
            hsPkgs.filepath
            hsPkgs.directory
            hsPkgs.old-locale
            hsPkgs.case-insensitive
            hsPkgs.time
            hsPkgs.deepseq
            hsPkgs.unix
            hsPkgs.byteorder
            hsPkgs.network
            hsPkgs.blaze-builder
          ];
        };
      };
    }