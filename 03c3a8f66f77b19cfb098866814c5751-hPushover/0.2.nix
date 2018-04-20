{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hPushover";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2013 Wander Hillen";
        maintainer = "wjw.hillen@gmail.com";
        author = "Wander Hillen";
        homepage = "tot";
        url = "";
        synopsis = "Pushover.net API functions";
        description = "";
        buildType = "Simple";
      };
      components = {
        hPushover = {
          depends  = [
            hsPkgs.base
            hsPkgs.http-conduit
            hsPkgs.network
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.aeson
          ];
        };
      };
    }