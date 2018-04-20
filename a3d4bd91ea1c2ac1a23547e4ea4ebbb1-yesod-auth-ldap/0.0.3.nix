{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      ghc7 = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6.0";
        identifier = {
          name = "yesod-auth-ldap";
          version = "0.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Michael Litchard";
        author = "Michael Litchard";
        homepage = "http://www.yesodweb.com/";
        url = "";
        synopsis = "LDAP Authentication for Yesod.";
        description = "LDAP Authentication for Yesod.";
        buildType = "Simple";
      };
      components = {
        yesod-auth-ldap = {
          depends  = [
            hsPkgs.LDAP
            hsPkgs.bytestring
            hsPkgs.yesod-core
            hsPkgs.yesod-auth
            hsPkgs.text
            hsPkgs.hamlet
            hsPkgs.yesod-form
            hsPkgs.transformers
            hsPkgs.authenticate-ldap
          ] ++ [ hsPkgs.base ];
        };
      };
    }