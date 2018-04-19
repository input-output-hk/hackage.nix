{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "yesod-platform";
          version = "1.0.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Michael Snoyman <michael@snoyman.com>";
        author = "Michael Snoyman <michael@snoyman.com>";
        homepage = "http://www.yesodweb.com/";
        url = "";
        synopsis = "Meta package for Yesod";
        description = "Instead of allowing version ranges of dependencies, this package requires specific versions to avoid dependency hell";
        buildType = "Simple";
      };
      components = {
        yesod-platform = {
          depends  = [
            hsPkgs.base
            hsPkgs.SHA
            hsPkgs.aeson
            hsPkgs.ansi-terminal
            hsPkgs.asn1-data
            hsPkgs.attoparsec
            hsPkgs.attoparsec-conduit
            hsPkgs.attoparsec-enumerator
            hsPkgs.authenticate
            hsPkgs.base-unicode-symbols
            hsPkgs.base64-bytestring
            hsPkgs.binary
            hsPkgs.blaze-builder
            hsPkgs.blaze-builder-conduit
            hsPkgs.blaze-html
            hsPkgs.blaze-markup
            hsPkgs.byteorder
            hsPkgs.case-insensitive
            hsPkgs.cereal
            hsPkgs.certificate
            hsPkgs.clientsession
            hsPkgs.conduit
            hsPkgs.cookie
            hsPkgs.cprng-aes
            hsPkgs.crypto-api
            hsPkgs.crypto-conduit
            hsPkgs.crypto-pubkey-types
            hsPkgs.cryptocipher
            hsPkgs.cryptohash
            hsPkgs.css-text
            hsPkgs.data-default
            hsPkgs.dlist
            hsPkgs.email-validate
            hsPkgs.entropy
            hsPkgs.enumerator
            hsPkgs.failure
            hsPkgs.fast-logger
            hsPkgs.file-embed
            hsPkgs.hamlet
            hsPkgs.hashable
            hsPkgs.hjsmin
            hsPkgs.http-conduit
            hsPkgs.http-date
            hsPkgs.http-types
            hsPkgs.language-javascript
            hsPkgs.largeword
            hsPkgs.lifted-base
            hsPkgs.mime-mail
            hsPkgs.monad-control
            hsPkgs.network-conduit
            hsPkgs.path-pieces
            hsPkgs.pem
            hsPkgs.persistent
            hsPkgs.persistent-template
            hsPkgs.pool-conduit
            hsPkgs.primitive
            hsPkgs.pureMD5
            hsPkgs.pwstore-fast
            hsPkgs.ranges
            hsPkgs.regex-compat
            hsPkgs.resource-pool
            hsPkgs.resourcet
            hsPkgs.safe
            hsPkgs.semigroups
            hsPkgs.shakespeare
            hsPkgs.shakespeare-css
            hsPkgs.shakespeare-i18n
            hsPkgs.shakespeare-js
            hsPkgs.shakespeare-text
            hsPkgs.simple-sendfile
            hsPkgs.skein
            hsPkgs.socks
            hsPkgs.stm
            hsPkgs.system-filepath
            hsPkgs.tagged
            hsPkgs.tagsoup
            hsPkgs.tls
            hsPkgs.tls-extra
            hsPkgs.transformers-base
            hsPkgs.unix-compat
            hsPkgs.unordered-containers
            hsPkgs.utf8-light
            hsPkgs.utf8-string
            hsPkgs.vault
            hsPkgs.vector
            hsPkgs.void
            hsPkgs.wai
            hsPkgs.wai-app-static
            hsPkgs.wai-extra
            hsPkgs.wai-logger
            hsPkgs.warp
            hsPkgs.xml-conduit
            hsPkgs.xml-types
            hsPkgs.xss-sanitize
            hsPkgs.yaml
            hsPkgs.yesod
            hsPkgs.yesod-auth
            hsPkgs.yesod-core
            hsPkgs.yesod-default
            hsPkgs.yesod-form
            hsPkgs.yesod-json
            hsPkgs.yesod-persistent
            hsPkgs.yesod-routes
            hsPkgs.yesod-static
            hsPkgs.zlib
            hsPkgs.zlib-bindings
            hsPkgs.zlib-conduit
          ];
        };
      };
    }