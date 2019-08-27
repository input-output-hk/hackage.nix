let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "yesod-platform"; version = "1.2.8.2"; };
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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."ReadArgs" or (buildDepError "ReadArgs"))
          (hsPkgs."SHA" or (buildDepError "SHA"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."ansi-terminal" or (buildDepError "ansi-terminal"))
          (hsPkgs."ansi-wl-pprint" or (buildDepError "ansi-wl-pprint"))
          (hsPkgs."asn1-encoding" or (buildDepError "asn1-encoding"))
          (hsPkgs."asn1-parse" or (buildDepError "asn1-parse"))
          (hsPkgs."asn1-types" or (buildDepError "asn1-types"))
          (hsPkgs."async" or (buildDepError "async"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."attoparsec-conduit" or (buildDepError "attoparsec-conduit"))
          (hsPkgs."authenticate" or (buildDepError "authenticate"))
          (hsPkgs."base-unicode-symbols" or (buildDepError "base-unicode-symbols"))
          (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
          (hsPkgs."basic-prelude" or (buildDepError "basic-prelude"))
          (hsPkgs."blaze-builder" or (buildDepError "blaze-builder"))
          (hsPkgs."blaze-builder-conduit" or (buildDepError "blaze-builder-conduit"))
          (hsPkgs."blaze-html" or (buildDepError "blaze-html"))
          (hsPkgs."blaze-markup" or (buildDepError "blaze-markup"))
          (hsPkgs."byteable" or (buildDepError "byteable"))
          (hsPkgs."byteorder" or (buildDepError "byteorder"))
          (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
          (hsPkgs."cereal" or (buildDepError "cereal"))
          (hsPkgs."cipher-aes" or (buildDepError "cipher-aes"))
          (hsPkgs."cipher-rc4" or (buildDepError "cipher-rc4"))
          (hsPkgs."clientsession" or (buildDepError "clientsession"))
          (hsPkgs."conduit" or (buildDepError "conduit"))
          (hsPkgs."connection" or (buildDepError "connection"))
          (hsPkgs."control-monad-loop" or (buildDepError "control-monad-loop"))
          (hsPkgs."cookie" or (buildDepError "cookie"))
          (hsPkgs."cprng-aes" or (buildDepError "cprng-aes"))
          (hsPkgs."crypto-api" or (buildDepError "crypto-api"))
          (hsPkgs."crypto-cipher-types" or (buildDepError "crypto-cipher-types"))
          (hsPkgs."crypto-numbers" or (buildDepError "crypto-numbers"))
          (hsPkgs."crypto-pubkey" or (buildDepError "crypto-pubkey"))
          (hsPkgs."crypto-pubkey-types" or (buildDepError "crypto-pubkey-types"))
          (hsPkgs."crypto-random" or (buildDepError "crypto-random"))
          (hsPkgs."cryptohash" or (buildDepError "cryptohash"))
          (hsPkgs."cryptohash-conduit" or (buildDepError "cryptohash-conduit"))
          (hsPkgs."css-text" or (buildDepError "css-text"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
          (hsPkgs."data-default-instances-base" or (buildDepError "data-default-instances-base"))
          (hsPkgs."data-default-instances-containers" or (buildDepError "data-default-instances-containers"))
          (hsPkgs."data-default-instances-dlist" or (buildDepError "data-default-instances-dlist"))
          (hsPkgs."data-default-instances-old-locale" or (buildDepError "data-default-instances-old-locale"))
          (hsPkgs."dlist" or (buildDepError "dlist"))
          (hsPkgs."email-validate" or (buildDepError "email-validate"))
          (hsPkgs."entropy" or (buildDepError "entropy"))
          (hsPkgs."esqueleto" or (buildDepError "esqueleto"))
          (hsPkgs."failure" or (buildDepError "failure"))
          (hsPkgs."fast-logger" or (buildDepError "fast-logger"))
          (hsPkgs."file-embed" or (buildDepError "file-embed"))
          (hsPkgs."filesystem-conduit" or (buildDepError "filesystem-conduit"))
          (hsPkgs."hamlet" or (buildDepError "hamlet"))
          (hsPkgs."hjsmin" or (buildDepError "hjsmin"))
          (hsPkgs."hspec" or (buildDepError "hspec"))
          (hsPkgs."hspec-expectations" or (buildDepError "hspec-expectations"))
          (hsPkgs."html-conduit" or (buildDepError "html-conduit"))
          (hsPkgs."http-client" or (buildDepError "http-client"))
          (hsPkgs."http-client-conduit" or (buildDepError "http-client-conduit"))
          (hsPkgs."http-client-tls" or (buildDepError "http-client-tls"))
          (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
          (hsPkgs."http-date" or (buildDepError "http-date"))
          (hsPkgs."http-reverse-proxy" or (buildDepError "http-reverse-proxy"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."language-javascript" or (buildDepError "language-javascript"))
          (hsPkgs."lifted-base" or (buildDepError "lifted-base"))
          (hsPkgs."mime-mail" or (buildDepError "mime-mail"))
          (hsPkgs."mime-types" or (buildDepError "mime-types"))
          (hsPkgs."mmorph" or (buildDepError "mmorph"))
          (hsPkgs."monad-control" or (buildDepError "monad-control"))
          (hsPkgs."monad-logger" or (buildDepError "monad-logger"))
          (hsPkgs."monad-loops" or (buildDepError "monad-loops"))
          (hsPkgs."network-conduit" or (buildDepError "network-conduit"))
          (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
          (hsPkgs."path-pieces" or (buildDepError "path-pieces"))
          (hsPkgs."pem" or (buildDepError "pem"))
          (hsPkgs."persistent" or (buildDepError "persistent"))
          (hsPkgs."persistent-template" or (buildDepError "persistent-template"))
          (hsPkgs."pool-conduit" or (buildDepError "pool-conduit"))
          (hsPkgs."primitive" or (buildDepError "primitive"))
          (hsPkgs."process-conduit" or (buildDepError "process-conduit"))
          (hsPkgs."publicsuffixlist" or (buildDepError "publicsuffixlist"))
          (hsPkgs."pureMD5" or (buildDepError "pureMD5"))
          (hsPkgs."pwstore-fast" or (buildDepError "pwstore-fast"))
          (hsPkgs."quickcheck-io" or (buildDepError "quickcheck-io"))
          (hsPkgs."resource-pool" or (buildDepError "resource-pool"))
          (hsPkgs."resourcet" or (buildDepError "resourcet"))
          (hsPkgs."safe" or (buildDepError "safe"))
          (hsPkgs."scientific" or (buildDepError "scientific"))
          (hsPkgs."securemem" or (buildDepError "securemem"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."setenv" or (buildDepError "setenv"))
          (hsPkgs."shakespeare" or (buildDepError "shakespeare"))
          (hsPkgs."shakespeare-css" or (buildDepError "shakespeare-css"))
          (hsPkgs."shakespeare-i18n" or (buildDepError "shakespeare-i18n"))
          (hsPkgs."shakespeare-js" or (buildDepError "shakespeare-js"))
          (hsPkgs."shakespeare-text" or (buildDepError "shakespeare-text"))
          (hsPkgs."silently" or (buildDepError "silently"))
          (hsPkgs."simple-sendfile" or (buildDepError "simple-sendfile"))
          (hsPkgs."skein" or (buildDepError "skein"))
          (hsPkgs."socks" or (buildDepError "socks"))
          (hsPkgs."stm-chans" or (buildDepError "stm-chans"))
          (hsPkgs."stringsearch" or (buildDepError "stringsearch"))
          (hsPkgs."system-fileio" or (buildDepError "system-fileio"))
          (hsPkgs."system-filepath" or (buildDepError "system-filepath"))
          (hsPkgs."tagged" or (buildDepError "tagged"))
          (hsPkgs."tagsoup" or (buildDepError "tagsoup"))
          (hsPkgs."tagstream-conduit" or (buildDepError "tagstream-conduit"))
          (hsPkgs."text-stream-decode" or (buildDepError "text-stream-decode"))
          (hsPkgs."tls" or (buildDepError "tls"))
          (hsPkgs."transformers-base" or (buildDepError "transformers-base"))
          (hsPkgs."unix-compat" or (buildDepError "unix-compat"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."utf8-light" or (buildDepError "utf8-light"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."void" or (buildDepError "void"))
          (hsPkgs."wai" or (buildDepError "wai"))
          (hsPkgs."wai-app-static" or (buildDepError "wai-app-static"))
          (hsPkgs."wai-extra" or (buildDepError "wai-extra"))
          (hsPkgs."wai-logger" or (buildDepError "wai-logger"))
          (hsPkgs."wai-test" or (buildDepError "wai-test"))
          (hsPkgs."warp" or (buildDepError "warp"))
          (hsPkgs."warp-tls" or (buildDepError "warp-tls"))
          (hsPkgs."word8" or (buildDepError "word8"))
          (hsPkgs."x509" or (buildDepError "x509"))
          (hsPkgs."x509-store" or (buildDepError "x509-store"))
          (hsPkgs."x509-system" or (buildDepError "x509-system"))
          (hsPkgs."x509-validation" or (buildDepError "x509-validation"))
          (hsPkgs."xml-conduit" or (buildDepError "xml-conduit"))
          (hsPkgs."xml-types" or (buildDepError "xml-types"))
          (hsPkgs."xss-sanitize" or (buildDepError "xss-sanitize"))
          (hsPkgs."yaml" or (buildDepError "yaml"))
          (hsPkgs."yesod" or (buildDepError "yesod"))
          (hsPkgs."yesod-auth" or (buildDepError "yesod-auth"))
          (hsPkgs."yesod-core" or (buildDepError "yesod-core"))
          (hsPkgs."yesod-form" or (buildDepError "yesod-form"))
          (hsPkgs."yesod-persistent" or (buildDepError "yesod-persistent"))
          (hsPkgs."yesod-routes" or (buildDepError "yesod-routes"))
          (hsPkgs."yesod-static" or (buildDepError "yesod-static"))
          (hsPkgs."yesod-test" or (buildDepError "yesod-test"))
          (hsPkgs."zlib-bindings" or (buildDepError "zlib-bindings"))
          (hsPkgs."zlib-conduit" or (buildDepError "zlib-conduit"))
          ];
        };
      };
    }