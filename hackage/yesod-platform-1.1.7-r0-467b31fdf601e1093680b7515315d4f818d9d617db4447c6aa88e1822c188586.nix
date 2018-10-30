{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "yesod-platform";
        version = "1.1.7";
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
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ReadArgs)
          (hsPkgs.SHA)
          (hsPkgs.aeson)
          (hsPkgs.ansi-terminal)
          (hsPkgs.asn1-data)
          (hsPkgs.attoparsec)
          (hsPkgs.attoparsec-conduit)
          (hsPkgs.authenticate)
          (hsPkgs.base-unicode-symbols)
          (hsPkgs.base64-bytestring)
          (hsPkgs.base64-conduit)
          (hsPkgs.basic-prelude)
          (hsPkgs.blaze-builder)
          (hsPkgs.blaze-builder-conduit)
          (hsPkgs.blaze-html)
          (hsPkgs.blaze-markup)
          (hsPkgs.byteorder)
          (hsPkgs.case-insensitive)
          (hsPkgs.cereal)
          (hsPkgs.certificate)
          (hsPkgs.cipher-aes)
          (hsPkgs.cipher-rc4)
          (hsPkgs.classy-prelude)
          (hsPkgs.classy-prelude-conduit)
          (hsPkgs.clientsession)
          (hsPkgs.conduit)
          (hsPkgs.cookie)
          (hsPkgs.cprng-aes)
          (hsPkgs.crypto-api)
          (hsPkgs.crypto-conduit)
          (hsPkgs.crypto-numbers)
          (hsPkgs.crypto-pubkey)
          (hsPkgs.crypto-pubkey-types)
          (hsPkgs.crypto-random-api)
          (hsPkgs.cryptohash)
          (hsPkgs.css-text)
          (hsPkgs.data-default)
          (hsPkgs.date-cache)
          (hsPkgs.dlist)
          (hsPkgs.email-validate)
          (hsPkgs.entropy)
          (hsPkgs.failure)
          (hsPkgs.fast-logger)
          (hsPkgs.file-embed)
          (hsPkgs.filesystem-conduit)
          (hsPkgs.fsnotify)
          (hsPkgs.ghc-paths)
          (hsPkgs.hamlet)
          (hsPkgs.hashable)
          (hsPkgs.hjsmin)
          (hsPkgs.hspec)
          (hsPkgs.hspec-expectations)
          (hsPkgs.html-conduit)
          (hsPkgs.http-conduit)
          (hsPkgs.http-date)
          (hsPkgs.http-reverse-proxy)
          (hsPkgs.http-types)
          (hsPkgs.language-javascript)
          (hsPkgs.largeword)
          (hsPkgs.lifted-base)
          (hsPkgs.mime-mail)
          (hsPkgs.mime-types)
          (hsPkgs.monad-control)
          (hsPkgs.monad-logger)
          (hsPkgs.network-conduit)
          (hsPkgs.optparse-applicative)
          (hsPkgs.path-pieces)
          (hsPkgs.pem)
          (hsPkgs.persistent)
          (hsPkgs.persistent-template)
          (hsPkgs.pool-conduit)
          (hsPkgs.primitive)
          (hsPkgs.project-template)
          (hsPkgs.pureMD5)
          (hsPkgs.pwstore-fast)
          (hsPkgs.ranges)
          (hsPkgs.resource-pool)
          (hsPkgs.resourcet)
          (hsPkgs.safe)
          (hsPkgs.semigroups)
          (hsPkgs.setenv)
          (hsPkgs.shakespeare)
          (hsPkgs.shakespeare-css)
          (hsPkgs.shakespeare-i18n)
          (hsPkgs.shakespeare-js)
          (hsPkgs.shakespeare-text)
          (hsPkgs.silently)
          (hsPkgs.simple-sendfile)
          (hsPkgs.skein)
          (hsPkgs.socks)
          (hsPkgs.split)
          (hsPkgs.stringsearch)
          (hsPkgs.system-fileio)
          (hsPkgs.system-filepath)
          (hsPkgs.tagged)
          (hsPkgs.tagsoup)
          (hsPkgs.tagstream-conduit)
          (hsPkgs.tar)
          (hsPkgs.tls)
          (hsPkgs.tls-extra)
          (hsPkgs.transformers-base)
          (hsPkgs.unix-compat)
          (hsPkgs.unordered-containers)
          (hsPkgs.utf8-light)
          (hsPkgs.utf8-string)
          (hsPkgs.vault)
          (hsPkgs.vector)
          (hsPkgs.void)
          (hsPkgs.wai)
          (hsPkgs.wai-app-static)
          (hsPkgs.wai-extra)
          (hsPkgs.wai-logger)
          (hsPkgs.wai-test)
          (hsPkgs.warp)
          (hsPkgs.word8)
          (hsPkgs.xml-conduit)
          (hsPkgs.xml-types)
          (hsPkgs.xss-sanitize)
          (hsPkgs.yaml)
          (hsPkgs.yesod)
          (hsPkgs.yesod-auth)
          (hsPkgs.yesod-core)
          (hsPkgs.yesod-default)
          (hsPkgs.yesod-form)
          (hsPkgs.yesod-json)
          (hsPkgs.yesod-persistent)
          (hsPkgs.yesod-routes)
          (hsPkgs.yesod-static)
          (hsPkgs.yesod-test)
          (hsPkgs.zlib-bindings)
          (hsPkgs.zlib-conduit)
        ];
      };
    };
  }