{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      network-uri = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6.0";
        identifier = {
          name = "yesod-auth";
          version = "1.4.0.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Michael Snoyman <michael@snoyman.com>";
        author = "Michael Snoyman, Patrick Brisbin";
        homepage = "http://www.yesodweb.com/";
        url = "";
        synopsis = "Authentication for Yesod.";
        description = "This package provides a pluggable mechanism for allowing users to authenticate with your site. It comes with a number of common plugins, such as OpenID, BrowserID (a.k.a., Mozilla Persona), and email. Other packages are available from Hackage as well. If you've written such an add-on, please notify me so that it can be added to this description.\n\n* <http://hackage.haskell.org/package/yesod-auth-account>: An account authentication plugin for Yesod\n\n* <http://hackage.haskell.org/package/yesod-auth-hashdb>: The HashDB module previously packaged in yesod-auth, now with stronger, but compatible, security.\n\n* <https://github.com/ollieh/yesod-auth-bcrypt/>: An alternative to the HashDB module.";
        buildType = "Simple";
      };
      components = {
        "yesod-auth" = {
          depends  = [
            hsPkgs.base
            hsPkgs.authenticate
            hsPkgs.bytestring
            hsPkgs.yesod-core
            hsPkgs.wai
            hsPkgs.template-haskell
            hsPkgs.base16-bytestring
            hsPkgs.cryptohash
            hsPkgs.random
            hsPkgs.text
            hsPkgs.mime-mail
            hsPkgs.yesod-persistent
            hsPkgs.shakespeare
            hsPkgs.containers
            hsPkgs.unordered-containers
            hsPkgs.yesod-form
            hsPkgs.transformers
            hsPkgs.persistent
            hsPkgs.persistent-template
            hsPkgs.http-conduit
            hsPkgs.aeson
            hsPkgs.lifted-base
            hsPkgs.blaze-html
            hsPkgs.blaze-markup
            hsPkgs.http-types
            hsPkgs.file-embed
            hsPkgs.email-validate
            hsPkgs.data-default
            hsPkgs.resourcet
            hsPkgs.safe
            hsPkgs.time
            hsPkgs.base64-bytestring
            hsPkgs.byteable
            hsPkgs.binary
            hsPkgs.http-client
            hsPkgs.blaze-builder
            hsPkgs.conduit
            hsPkgs.conduit-extra
          ] ++ (if _flags.network-uri
            then [ hsPkgs.network-uri ]
            else [ hsPkgs.network ]);
        };
      };
    }