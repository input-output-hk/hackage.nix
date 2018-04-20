{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "yesod-auth-ldap-native";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2015 Maciej Kazulak";
        maintainer = "kazulakm@gmail.com";
        author = "Maciej Kazulak";
        homepage = "http://github.com/mulderr/yesod-auth-ldap-native";
        url = "";
        synopsis = "Yesod LDAP authentication plugin";
        description = "This package provides an LDAP authentication plugin for Yesod.";
        buildType = "Simple";
      };
      components = {
        yesod-auth-ldap-native = {
          depends  = [
            hsPkgs.base
            hsPkgs.yesod-core
            hsPkgs.yesod-auth
            hsPkgs.yesod-form
            hsPkgs.ldap-client
            hsPkgs.text
            hsPkgs.semigroups
            hsPkgs.transformers
            hsPkgs.either
          ];
        };
        tests = {
          yesod-auth-ldap-native-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.yesod-auth-ldap-native
            ];
          };
        };
      };
    }