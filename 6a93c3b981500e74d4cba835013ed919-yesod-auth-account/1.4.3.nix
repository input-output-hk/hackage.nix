{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "yesod-auth-account";
          version = "1.4.3";
        };
        license = "MIT";
        copyright = "";
        maintainer = "John Lenz <lenz@math.uic.edu>";
        author = "John Lenz <lenz@math.uic.edu>";
        homepage = "https://bitbucket.org/wuzzeb/yesod-auth-account";
        url = "";
        synopsis = "An account authentication plugin for Yesod";
        description = "An auth plugin for accounts. Each account consists of a username,\nemail, and password.  The plugin provides new account, email verification,\nand password reset pages that can be customized to enhance the user experience.";
        buildType = "Simple";
      };
      components = {
        "yesod-auth-account" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.blaze-html
            hsPkgs.mtl
            hsPkgs.nonce
            hsPkgs.text
            hsPkgs.persistent
            hsPkgs.pwstore-fast
            hsPkgs.yesod-auth
            hsPkgs.yesod-core
            hsPkgs.yesod-form
            hsPkgs.yesod-persistent
          ];
        };
        tests = {
          "test" = {
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
              hsPkgs.yesod-auth-account
            ];
          };
        };
      };
    }