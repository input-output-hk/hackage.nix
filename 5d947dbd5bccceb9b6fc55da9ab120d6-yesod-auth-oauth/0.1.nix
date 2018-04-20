{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "yesod-auth-oauth";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "konn.jinro_at_gmail.com";
        author = "Hiromi ISHII";
        homepage = "";
        url = "";
        synopsis = "OAuth wrapper for yesod-auth";
        description = "General OAuth interface for yesod-auth.";
        buildType = "Simple";
      };
      components = {
        yesod-auth-oauth = {
          depends  = [
            hsPkgs.base
            hsPkgs.hoauth
            hsPkgs.yesod-auth
            hsPkgs.yesod
          ];
        };
      };
    }