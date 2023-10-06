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
      specVersion = "1.18";
      identifier = { name = "freckle-app"; version = "1.9.3.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Freckle Education";
      author = "";
      homepage = "https://github.com/freckle/freckle-app#readme";
      url = "";
      synopsis = "Haskell application toolkit used at Freckle";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."yesod-core" or (errorHandler.buildDepError "yesod-core"))
          (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
          (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."unliftio-core" or (errorHandler.buildDepError "unliftio-core"))
          (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
          (hsPkgs."typed-process" or (errorHandler.buildDepError "typed-process"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."semigroupoids" or (errorHandler.buildDepError "semigroupoids"))
          (hsPkgs."scientist" or (errorHandler.buildDepError "scientist"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."resource-pool" or (errorHandler.buildDepError "resource-pool"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."postgresql-simple" or (errorHandler.buildDepError "postgresql-simple"))
          (hsPkgs."persistent-postgresql" or (errorHandler.buildDepError "persistent-postgresql"))
          (hsPkgs."persistent" or (errorHandler.buildDepError "persistent"))
          (hsPkgs."path-pieces" or (errorHandler.buildDepError "path-pieces"))
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."memcache" or (errorHandler.buildDepError "memcache"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."immortal" or (errorHandler.buildDepError "immortal"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."http-link-header" or (errorHandler.buildDepError "http-link-header"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."hspec-expectations-lifted" or (errorHandler.buildDepError "hspec-expectations-lifted"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."errors" or (errorHandler.buildDepError "errors"))
          (hsPkgs."envparse" or (errorHandler.buildDepError "envparse"))
          (hsPkgs."ekg-core" or (errorHandler.buildDepError "ekg-core"))
          (hsPkgs."dotenv" or (errorHandler.buildDepError "dotenv"))
          (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
          (hsPkgs."datadog" or (errorHandler.buildDepError "datadog"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."bugsnag" or (errorHandler.buildDepError "bugsnag"))
          (hsPkgs."aws-xray-client-wai" or (errorHandler.buildDepError "aws-xray-client-wai"))
          (hsPkgs."aws-xray-client-persistent" or (errorHandler.buildDepError "aws-xray-client-persistent"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
          (hsPkgs."Glob" or (errorHandler.buildDepError "Glob"))
          (hsPkgs."Blammo" or (errorHandler.buildDepError "Blammo"))
          (hsPkgs."Blammo" or (errorHandler.buildDepError "Blammo"))
          (hsPkgs."Glob" or (errorHandler.buildDepError "Glob"))
          (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."aws-xray-client-persistent" or (errorHandler.buildDepError "aws-xray-client-persistent"))
          (hsPkgs."aws-xray-client-wai" or (errorHandler.buildDepError "aws-xray-client-wai"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bugsnag" or (errorHandler.buildDepError "bugsnag"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
          (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."conduit-extra" or (errorHandler.buildDepError "conduit-extra"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."datadog" or (errorHandler.buildDepError "datadog"))
          (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
          (hsPkgs."dotenv" or (errorHandler.buildDepError "dotenv"))
          (hsPkgs."ekg-core" or (errorHandler.buildDepError "ekg-core"))
          (hsPkgs."envparse" or (errorHandler.buildDepError "envparse"))
          (hsPkgs."errors" or (errorHandler.buildDepError "errors"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          (hsPkgs."hspec-core" or (errorHandler.buildDepError "hspec-core"))
          (hsPkgs."hspec-expectations-lifted" or (errorHandler.buildDepError "hspec-expectations-lifted"))
          (hsPkgs."hspec-junit-formatter" or (errorHandler.buildDepError "hspec-junit-formatter"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          (hsPkgs."http-link-header" or (errorHandler.buildDepError "http-link-header"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."hw-kafka-client" or (errorHandler.buildDepError "hw-kafka-client"))
          (hsPkgs."immortal" or (errorHandler.buildDepError "immortal"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."memcache" or (errorHandler.buildDepError "memcache"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."monad-validate" or (errorHandler.buildDepError "monad-validate"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
          (hsPkgs."nonempty-containers" or (errorHandler.buildDepError "nonempty-containers"))
          (hsPkgs."path-pieces" or (errorHandler.buildDepError "path-pieces"))
          (hsPkgs."persistent" or (errorHandler.buildDepError "persistent"))
          (hsPkgs."persistent-postgresql" or (errorHandler.buildDepError "persistent-postgresql"))
          (hsPkgs."postgresql-simple" or (errorHandler.buildDepError "postgresql-simple"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."resource-pool" or (errorHandler.buildDepError "resource-pool"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."retry" or (errorHandler.buildDepError "retry"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."scientist" or (errorHandler.buildDepError "scientist"))
          (hsPkgs."semigroupoids" or (errorHandler.buildDepError "semigroupoids"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          (hsPkgs."typed-process" or (errorHandler.buildDepError "typed-process"))
          (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
          (hsPkgs."unliftio-core" or (errorHandler.buildDepError "unliftio-core"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
          (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
          (hsPkgs."yesod-core" or (errorHandler.buildDepError "yesod-core"))
          ];
        buildable = true;
        };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."freckle-app" or (errorHandler.buildDepError "freckle-app"))
            ];
          buildable = true;
          };
        "spec" = {
          depends = [
            (hsPkgs."Blammo" or (errorHandler.buildDepError "Blammo"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bugsnag" or (errorHandler.buildDepError "bugsnag"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."errors" or (errorHandler.buildDepError "errors"))
            (hsPkgs."freckle-app" or (errorHandler.buildDepError "freckle-app"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."lens-aeson" or (errorHandler.buildDepError "lens-aeson"))
            (hsPkgs."memcache" or (errorHandler.buildDepError "memcache"))
            (hsPkgs."monad-validate" or (errorHandler.buildDepError "monad-validate"))
            (hsPkgs."nonempty-containers" or (errorHandler.buildDepError "nonempty-containers"))
            (hsPkgs."postgresql-simple" or (errorHandler.buildDepError "postgresql-simple"))
            (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
            ];
          buildable = true;
          };
        };
      };
    }