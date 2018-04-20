{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      test = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hoauth2";
          version = "0.4.1";
        };
        license = "BSD-3-Clause";
        copyright = "Haisheng,Wu";
        maintainer = "freizl@gmail.com";
        author = "Haisheng Wu";
        homepage = "https://github.com/freizl/hoauth2";
        url = "";
        synopsis = "hoauth2";
        description = "Haskell OAuth2 authentication.\n\nTested following services\n\n* google web oauth: <https://developers.google.com/accounts/docs/OAuth2WebServer>\n\n* weibo oauth2: <http://open.weibo.com/wiki/Oauth2>\n\n* github oauth: <http://developer.github.com/v3/oauth/>";
        buildType = "Simple";
      };
      components = {
        hoauth2 = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.bytestring-show
            hsPkgs.http-conduit
            hsPkgs.http-types
            hsPkgs.monad-control
            hsPkgs.mtl
            hsPkgs.transformers
            hsPkgs.random
          ];
        };
        exes = {
          test-weibo = {
            depends  = [
              hsPkgs.base
              hsPkgs.http-types
              hsPkgs.http-conduit
              hsPkgs.text
              hsPkgs.text
              hsPkgs.bytestring
              hsPkgs.hoauth2
            ];
          };
          test-google = {
            depends  = [
              hsPkgs.base
              hsPkgs.http-types
              hsPkgs.http-conduit
              hsPkgs.text
              hsPkgs.text
              hsPkgs.bytestring
              hsPkgs.aeson
              hsPkgs.hoauth2
            ];
          };
          test-github = {
            depends  = [
              hsPkgs.base
              hsPkgs.http-types
              hsPkgs.http-conduit
              hsPkgs.text
              hsPkgs.text
              hsPkgs.bytestring
              hsPkgs.aeson
              hsPkgs.hoauth2
            ];
          };
          test-douban = {
            depends  = [
              hsPkgs.base
              hsPkgs.http-types
              hsPkgs.http-conduit
              hsPkgs.text
              hsPkgs.text
              hsPkgs.bytestring
              hsPkgs.aeson
              hsPkgs.hoauth2
            ];
          };
          test-fb = {
            depends  = [
              hsPkgs.base
              hsPkgs.http-types
              hsPkgs.http-conduit
              hsPkgs.text
              hsPkgs.text
              hsPkgs.bytestring
              hsPkgs.aeson
              hsPkgs.hoauth2
            ];
          };
        };
      };
    }