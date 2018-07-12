{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "yesod-auth-bcryptdb";
          version = "0.1.0.1";
        };
        license = "MIT";
        copyright = "2017 Yusent Chig";
        maintainer = "Yusent Chig <yusent@protonmail.com>";
        author = "Yusent Chig";
        homepage = "https://github.com/yusent/yesod-auth-bcryptdb";
        url = "";
        synopsis = "Authentication plugin for Yesod.";
        description = "This package provides authentication with passwords hashed and salted using\nbcrypt which are stored in a database, and works best in situations where an\nadministrator is involved in setting up a user with an initial password.\n\nThe complete login process, including a default form, is implemented by\nthis plugin, but the application developer must design the interfaces\nfor setting up users and allowing them to change their own passwords,\nsince only the low-level password-setting functions are provided by this\npackage.  (Note that other authentication plugins may be more appropriate\nif you wish to use email verification to set up accounts).";
        buildType = "Simple";
      };
      components = {
        "yesod-auth-bcryptdb" = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.bcrypt
            hsPkgs.bytestring
            hsPkgs.persistent
            hsPkgs.text
            hsPkgs.yesod-auth
            hsPkgs.yesod-core
            hsPkgs.yesod-form
            hsPkgs.yesod-persistent
          ];
        };
      };
    }