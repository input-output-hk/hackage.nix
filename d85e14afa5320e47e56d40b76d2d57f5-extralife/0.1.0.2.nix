{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "extralife";
          version = "0.1.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2017 Tina Wuest";
        maintainer = "tina@wuest.me";
        author = "Tina Wuest";
        homepage = "https://github.com/wuest/haskell-extralife-api";
        url = "";
        synopsis = "API Client for ExtraLife team and user data";
        description = "Provides types and helper functions for fetching data from ExtraLife about donation drives (participants, teams, donations)";
        buildType = "Simple";
      };
      components = {
        extralife = {
          depends  = [
            hsPkgs.base
            hsPkgs.http-client
            hsPkgs.http-client-tls
            hsPkgs.aeson
            hsPkgs.bytestring
            hsPkgs.time
            hsPkgs.text
          ];
        };
      };
    }