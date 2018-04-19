{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "yesod-auth-deskcom";
          version = "1.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Felipe Lessa <felipe.lessa@gmail.com>";
        author = "Felipe Lessa";
        homepage = "https://github.com/prowdsponsor/yesod-auth-deskcom";
        url = "";
        synopsis = "Desk.com remote authentication support for Yesod apps.";
        description = "This package allows users of your website to login into\nDesk.com automatically using Desk.com's Multipass SSO (single\nsign-on, <http://dev.desk.com/docs/portal/multipass>).\n\nNote that this is an unusual @yesod-auth-*@ package.  We do not\ndefine an @AuthPlugin@ because the user can't log in to your\nwebsite via Desk.com (it's the opposite, they login in Desk.com\nvia your website).  Instead, this plugin defines an Yesod\nsubsite that you may include on your site; the subsite defines\na route that accepts incoming users from Desk.com and\nauthenticates them.";
        buildType = "Simple";
      };
      components = {
        yesod-auth-deskcom = {
          depends  = [
            hsPkgs.base
            hsPkgs.time
            hsPkgs.template-haskell
            hsPkgs.transformers
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.data-default
            hsPkgs.base64-bytestring
            hsPkgs.cryptohash
            hsPkgs.cryptohash-cryptoapi
            hsPkgs.cipher-aes
            hsPkgs.cprng-aes
            hsPkgs.crypto-api
            hsPkgs.aeson
            hsPkgs.http-conduit
            hsPkgs.http-types
            hsPkgs.yesod-core
            hsPkgs.yesod-auth
          ];
        };
      };
    }