{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { devel = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "nakadi-client"; version = "0.5.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2017, 2018 Moritz Clasmeier";
      maintainer = "mtesseract@silverratio.net";
      author = "Moritz Clasmeier";
      homepage = "https://github.com/mtesseract/nakadi-haskell#readme";
      url = "";
      synopsis = "Client library for the Nakadi Event Broker";
      description = "This package implements a client library for interacting with the Nakadi event broker system developed by Zalando.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."aeson-casing" or ((hsPkgs.pkgs-errors).buildDepError "aeson-casing"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
          (hsPkgs."conduit-combinators" or ((hsPkgs.pkgs-errors).buildDepError "conduit-combinators"))
          (hsPkgs."conduit-extra" or ((hsPkgs.pkgs-errors).buildDepError "conduit-extra"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."http-client" or ((hsPkgs.pkgs-errors).buildDepError "http-client"))
          (hsPkgs."http-client-tls" or ((hsPkgs.pkgs-errors).buildDepError "http-client-tls"))
          (hsPkgs."http-conduit" or ((hsPkgs.pkgs-errors).buildDepError "http-conduit"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."iso8601-time" or ((hsPkgs.pkgs-errors).buildDepError "iso8601-time"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."monad-control" or ((hsPkgs.pkgs-errors).buildDepError "monad-control"))
          (hsPkgs."monad-logger" or ((hsPkgs.pkgs-errors).buildDepError "monad-logger"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
          (hsPkgs."retry" or ((hsPkgs.pkgs-errors).buildDepError "retry"))
          (hsPkgs."safe-exceptions" or ((hsPkgs.pkgs-errors).buildDepError "safe-exceptions"))
          (hsPkgs."scientific" or ((hsPkgs.pkgs-errors).buildDepError "scientific"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."transformers-base" or ((hsPkgs.pkgs-errors).buildDepError "transformers-base"))
          (hsPkgs."unliftio-core" or ((hsPkgs.pkgs-errors).buildDepError "unliftio-core"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."uuid" or ((hsPkgs.pkgs-errors).buildDepError "uuid"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "nakadi-client-test-suite" = {
          depends = [
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."aeson-casing" or ((hsPkgs.pkgs-errors).buildDepError "aeson-casing"))
            (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."classy-prelude" or ((hsPkgs.pkgs-errors).buildDepError "classy-prelude"))
            (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
            (hsPkgs."conduit-combinators" or ((hsPkgs.pkgs-errors).buildDepError "conduit-combinators"))
            (hsPkgs."conduit-extra" or ((hsPkgs.pkgs-errors).buildDepError "conduit-extra"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
            (hsPkgs."fast-logger" or ((hsPkgs.pkgs-errors).buildDepError "fast-logger"))
            (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
            (hsPkgs."http-client" or ((hsPkgs.pkgs-errors).buildDepError "http-client"))
            (hsPkgs."http-client-tls" or ((hsPkgs.pkgs-errors).buildDepError "http-client-tls"))
            (hsPkgs."http-conduit" or ((hsPkgs.pkgs-errors).buildDepError "http-conduit"))
            (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
            (hsPkgs."iso8601-time" or ((hsPkgs.pkgs-errors).buildDepError "iso8601-time"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."lens-aeson" or ((hsPkgs.pkgs-errors).buildDepError "lens-aeson"))
            (hsPkgs."lifted-async" or ((hsPkgs.pkgs-errors).buildDepError "lifted-async"))
            (hsPkgs."monad-control" or ((hsPkgs.pkgs-errors).buildDepError "monad-control"))
            (hsPkgs."monad-logger" or ((hsPkgs.pkgs-errors).buildDepError "monad-logger"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."nakadi-client" or ((hsPkgs.pkgs-errors).buildDepError "nakadi-client"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
            (hsPkgs."retry" or ((hsPkgs.pkgs-errors).buildDepError "retry"))
            (hsPkgs."safe-exceptions" or ((hsPkgs.pkgs-errors).buildDepError "safe-exceptions"))
            (hsPkgs."say" or ((hsPkgs.pkgs-errors).buildDepError "say"))
            (hsPkgs."scientific" or ((hsPkgs.pkgs-errors).buildDepError "scientific"))
            (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
            (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
            (hsPkgs."stm-chans" or ((hsPkgs.pkgs-errors).buildDepError "stm-chans"))
            (hsPkgs."stm-conduit" or ((hsPkgs.pkgs-errors).buildDepError "stm-conduit"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."transformers-base" or ((hsPkgs.pkgs-errors).buildDepError "transformers-base"))
            (hsPkgs."unliftio" or ((hsPkgs.pkgs-errors).buildDepError "unliftio"))
            (hsPkgs."unliftio-core" or ((hsPkgs.pkgs-errors).buildDepError "unliftio-core"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            (hsPkgs."uuid" or ((hsPkgs.pkgs-errors).buildDepError "uuid"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
            (hsPkgs."warp" or ((hsPkgs.pkgs-errors).buildDepError "warp"))
            ];
          buildable = true;
          };
        };
      };
    }