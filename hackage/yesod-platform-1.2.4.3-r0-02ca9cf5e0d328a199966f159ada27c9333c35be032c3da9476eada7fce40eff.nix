{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "yesod-platform"; version = "1.2.4.3"; };
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
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."SHA" or (errorHandler.buildDepError "SHA"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
          (hsPkgs."asn1-data" or (errorHandler.buildDepError "asn1-data"))
          (hsPkgs."asn1-types" or (errorHandler.buildDepError "asn1-types"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."attoparsec-conduit" or (errorHandler.buildDepError "attoparsec-conduit"))
          (hsPkgs."authenticate" or (errorHandler.buildDepError "authenticate"))
          (hsPkgs."base-unicode-symbols" or (errorHandler.buildDepError "base-unicode-symbols"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
          (hsPkgs."blaze-builder-conduit" or (errorHandler.buildDepError "blaze-builder-conduit"))
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
          (hsPkgs."blaze-markup" or (errorHandler.buildDepError "blaze-markup"))
          (hsPkgs."byteable" or (errorHandler.buildDepError "byteable"))
          (hsPkgs."byteorder" or (errorHandler.buildDepError "byteorder"))
          (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."certificate" or (errorHandler.buildDepError "certificate"))
          (hsPkgs."cipher-aes" or (errorHandler.buildDepError "cipher-aes"))
          (hsPkgs."cipher-rc4" or (errorHandler.buildDepError "cipher-rc4"))
          (hsPkgs."clientsession" or (errorHandler.buildDepError "clientsession"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."cookie" or (errorHandler.buildDepError "cookie"))
          (hsPkgs."cprng-aes" or (errorHandler.buildDepError "cprng-aes"))
          (hsPkgs."crypto-api" or (errorHandler.buildDepError "crypto-api"))
          (hsPkgs."crypto-cipher-types" or (errorHandler.buildDepError "crypto-cipher-types"))
          (hsPkgs."crypto-conduit" or (errorHandler.buildDepError "crypto-conduit"))
          (hsPkgs."crypto-numbers" or (errorHandler.buildDepError "crypto-numbers"))
          (hsPkgs."crypto-pubkey" or (errorHandler.buildDepError "crypto-pubkey"))
          (hsPkgs."crypto-pubkey-types" or (errorHandler.buildDepError "crypto-pubkey-types"))
          (hsPkgs."crypto-random" or (errorHandler.buildDepError "crypto-random"))
          (hsPkgs."cryptohash" or (errorHandler.buildDepError "cryptohash"))
          (hsPkgs."cryptohash-cryptoapi" or (errorHandler.buildDepError "cryptohash-cryptoapi"))
          (hsPkgs."css-text" or (errorHandler.buildDepError "css-text"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          (hsPkgs."data-default-instances-base" or (errorHandler.buildDepError "data-default-instances-base"))
          (hsPkgs."data-default-instances-containers" or (errorHandler.buildDepError "data-default-instances-containers"))
          (hsPkgs."data-default-instances-dlist" or (errorHandler.buildDepError "data-default-instances-dlist"))
          (hsPkgs."data-default-instances-old-locale" or (errorHandler.buildDepError "data-default-instances-old-locale"))
          (hsPkgs."date-cache" or (errorHandler.buildDepError "date-cache"))
          (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
          (hsPkgs."email-validate" or (errorHandler.buildDepError "email-validate"))
          (hsPkgs."entropy" or (errorHandler.buildDepError "entropy"))
          (hsPkgs."failure" or (errorHandler.buildDepError "failure"))
          (hsPkgs."fast-logger" or (errorHandler.buildDepError "fast-logger"))
          (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
          (hsPkgs."filesystem-conduit" or (errorHandler.buildDepError "filesystem-conduit"))
          (hsPkgs."hamlet" or (errorHandler.buildDepError "hamlet"))
          (hsPkgs."hjsmin" or (errorHandler.buildDepError "hjsmin"))
          (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          (hsPkgs."hspec-expectations" or (errorHandler.buildDepError "hspec-expectations"))
          (hsPkgs."html-conduit" or (errorHandler.buildDepError "html-conduit"))
          (hsPkgs."http-attoparsec" or (errorHandler.buildDepError "http-attoparsec"))
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          (hsPkgs."http-date" or (errorHandler.buildDepError "http-date"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."language-javascript" or (errorHandler.buildDepError "language-javascript"))
          (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
          (hsPkgs."mime-mail" or (errorHandler.buildDepError "mime-mail"))
          (hsPkgs."mime-types" or (errorHandler.buildDepError "mime-types"))
          (hsPkgs."mmorph" or (errorHandler.buildDepError "mmorph"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
          (hsPkgs."network-conduit" or (errorHandler.buildDepError "network-conduit"))
          (hsPkgs."path-pieces" or (errorHandler.buildDepError "path-pieces"))
          (hsPkgs."pem" or (errorHandler.buildDepError "pem"))
          (hsPkgs."persistent" or (errorHandler.buildDepError "persistent"))
          (hsPkgs."persistent-template" or (errorHandler.buildDepError "persistent-template"))
          (hsPkgs."pool-conduit" or (errorHandler.buildDepError "pool-conduit"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."publicsuffixlist" or (errorHandler.buildDepError "publicsuffixlist"))
          (hsPkgs."pureMD5" or (errorHandler.buildDepError "pureMD5"))
          (hsPkgs."pwstore-fast" or (errorHandler.buildDepError "pwstore-fast"))
          (hsPkgs."quickcheck-io" or (errorHandler.buildDepError "quickcheck-io"))
          (hsPkgs."resource-pool" or (errorHandler.buildDepError "resource-pool"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."securemem" or (errorHandler.buildDepError "securemem"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."setenv" or (errorHandler.buildDepError "setenv"))
          (hsPkgs."shakespeare" or (errorHandler.buildDepError "shakespeare"))
          (hsPkgs."shakespeare-css" or (errorHandler.buildDepError "shakespeare-css"))
          (hsPkgs."shakespeare-i18n" or (errorHandler.buildDepError "shakespeare-i18n"))
          (hsPkgs."shakespeare-js" or (errorHandler.buildDepError "shakespeare-js"))
          (hsPkgs."shakespeare-text" or (errorHandler.buildDepError "shakespeare-text"))
          (hsPkgs."silently" or (errorHandler.buildDepError "silently"))
          (hsPkgs."simple-sendfile" or (errorHandler.buildDepError "simple-sendfile"))
          (hsPkgs."skein" or (errorHandler.buildDepError "skein"))
          (hsPkgs."socks" or (errorHandler.buildDepError "socks"))
          (hsPkgs."stringsearch" or (errorHandler.buildDepError "stringsearch"))
          (hsPkgs."system-fileio" or (errorHandler.buildDepError "system-fileio"))
          (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
          (hsPkgs."tagstream-conduit" or (errorHandler.buildDepError "tagstream-conduit"))
          (hsPkgs."tls" or (errorHandler.buildDepError "tls"))
          (hsPkgs."tls-extra" or (errorHandler.buildDepError "tls-extra"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          (hsPkgs."unix-compat" or (errorHandler.buildDepError "unix-compat"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."utf8-light" or (errorHandler.buildDepError "utf8-light"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."void" or (errorHandler.buildDepError "void"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."wai-app-static" or (errorHandler.buildDepError "wai-app-static"))
          (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
          (hsPkgs."wai-logger" or (errorHandler.buildDepError "wai-logger"))
          (hsPkgs."wai-test" or (errorHandler.buildDepError "wai-test"))
          (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
          (hsPkgs."word8" or (errorHandler.buildDepError "word8"))
          (hsPkgs."xml-conduit" or (errorHandler.buildDepError "xml-conduit"))
          (hsPkgs."xml-types" or (errorHandler.buildDepError "xml-types"))
          (hsPkgs."xss-sanitize" or (errorHandler.buildDepError "xss-sanitize"))
          (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
          (hsPkgs."yesod" or (errorHandler.buildDepError "yesod"))
          (hsPkgs."yesod-auth" or (errorHandler.buildDepError "yesod-auth"))
          (hsPkgs."yesod-core" or (errorHandler.buildDepError "yesod-core"))
          (hsPkgs."yesod-form" or (errorHandler.buildDepError "yesod-form"))
          (hsPkgs."yesod-persistent" or (errorHandler.buildDepError "yesod-persistent"))
          (hsPkgs."yesod-routes" or (errorHandler.buildDepError "yesod-routes"))
          (hsPkgs."yesod-static" or (errorHandler.buildDepError "yesod-static"))
          (hsPkgs."yesod-test" or (errorHandler.buildDepError "yesod-test"))
          (hsPkgs."zlib-bindings" or (errorHandler.buildDepError "zlib-bindings"))
          (hsPkgs."zlib-conduit" or (errorHandler.buildDepError "zlib-conduit"))
          ];
        buildable = true;
        };
      };
    }