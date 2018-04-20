{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "yesod-auth-account-fork";
          version = "2.0.3";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Felipe Lessa <felipe.lessa@gmail.com>";
        author = "John Lenz <lenz@math.uic.edu>, Felipe Lessa <felipe.lessa@gmail.com>";
        homepage = "https://github.com/meteficha/yesod-auth-account-fork";
        url = "";
        synopsis = "An account authentication plugin for Yesod";
        description = "An auth plugin for accounts. Each account consists of a\nusername, email, and password.  The plugin provides new\naccount, email verification, and password reset pages that can\nbe customized to enhance the user experience.\n\nThis is a fork of the @yesod-auth-account@ package with the\nfollowing additions:\n\n* Login using either username or e-mail.\n\n* JSON support for single page applications.\n\nWe'd like to merge these changes back upstream but its\nmaintainer has been unresponsive.";
        buildType = "Simple";
      };
      components = {
        yesod-auth-account-fork = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.bytestring
            hsPkgs.blaze-html
            hsPkgs.http-types
            hsPkgs.mtl
            hsPkgs.nonce
            hsPkgs.tagged
            hsPkgs.text
            hsPkgs.persistent
            hsPkgs.email-validate
            hsPkgs.pwstore-fast
            hsPkgs.random
            hsPkgs.yesod-auth
            hsPkgs.yesod-core
            hsPkgs.yesod-form
            hsPkgs.yesod-persistent
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.hspec
              hsPkgs.monad-logger
              hsPkgs.mtl
              hsPkgs.persistent-sqlite
              hsPkgs.resourcet
              hsPkgs.text
              hsPkgs.xml-conduit
              hsPkgs.yesod
              hsPkgs.yesod-test
              hsPkgs.yesod-auth
              hsPkgs.yesod-auth-account-fork
            ];
          };
        };
      };
    }