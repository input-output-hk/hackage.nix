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
      specVersion = "1.12";
      identifier = { name = "pantry"; version = "0.6.0"; };
      license = "BSD-3-Clause";
      copyright = "2018-2022 FP Complete";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "https://github.com/commercialhaskell/pantry#readme";
      url = "";
      synopsis = "Content addressable Haskell package management";
      description = "Please see the README on GitHub at <https://github.com/commercialhaskell/pantry#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."casa-client" or (errorHandler.buildDepError "casa-client"))
          (hsPkgs."casa-types" or (errorHandler.buildDepError "casa-types"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."conduit-extra" or (errorHandler.buildDepError "conduit-extra"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
          (hsPkgs."cryptonite-conduit" or (errorHandler.buildDepError "cryptonite-conduit"))
          (hsPkgs."digest" or (errorHandler.buildDepError "digest"))
          (hsPkgs."filelock" or (errorHandler.buildDepError "filelock"))
          (hsPkgs."generic-deriving" or (errorHandler.buildDepError "generic-deriving"))
          (hsPkgs."hackage-security" or (errorHandler.buildDepError "hackage-security"))
          (hsPkgs."hpack" or (errorHandler.buildDepError "hpack"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          (hsPkgs."http-download" or (errorHandler.buildDepError "http-download"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
          (hsPkgs."path" or (errorHandler.buildDepError "path"))
          (hsPkgs."path-io" or (errorHandler.buildDepError "path-io"))
          (hsPkgs."persistent" or (errorHandler.buildDepError "persistent"))
          (hsPkgs."persistent-sqlite" or (errorHandler.buildDepError "persistent-sqlite"))
          (hsPkgs."persistent-template" or (errorHandler.buildDepError "persistent-template"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."rio" or (errorHandler.buildDepError "rio"))
          (hsPkgs."rio-orphans" or (errorHandler.buildDepError "rio-orphans"))
          (hsPkgs."rio-prettyprint" or (errorHandler.buildDepError "rio-prettyprint"))
          (hsPkgs."tar-conduit" or (errorHandler.buildDepError "tar-conduit"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."text-metrics" or (errorHandler.buildDepError "text-metrics"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unix-compat" or (errorHandler.buildDepError "unix-compat"))
          (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
          (hsPkgs."zip-archive" or (errorHandler.buildDepError "zip-archive"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."casa-client" or (errorHandler.buildDepError "casa-client"))
            (hsPkgs."casa-types" or (errorHandler.buildDepError "casa-types"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."conduit-extra" or (errorHandler.buildDepError "conduit-extra"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
            (hsPkgs."cryptonite-conduit" or (errorHandler.buildDepError "cryptonite-conduit"))
            (hsPkgs."digest" or (errorHandler.buildDepError "digest"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."filelock" or (errorHandler.buildDepError "filelock"))
            (hsPkgs."generic-deriving" or (errorHandler.buildDepError "generic-deriving"))
            (hsPkgs."hackage-security" or (errorHandler.buildDepError "hackage-security"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."hpack" or (errorHandler.buildDepError "hpack"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
            (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
            (hsPkgs."http-download" or (errorHandler.buildDepError "http-download"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
            (hsPkgs."pantry" or (errorHandler.buildDepError "pantry"))
            (hsPkgs."path" or (errorHandler.buildDepError "path"))
            (hsPkgs."path-io" or (errorHandler.buildDepError "path-io"))
            (hsPkgs."persistent" or (errorHandler.buildDepError "persistent"))
            (hsPkgs."persistent-sqlite" or (errorHandler.buildDepError "persistent-sqlite"))
            (hsPkgs."persistent-template" or (errorHandler.buildDepError "persistent-template"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."raw-strings-qq" or (errorHandler.buildDepError "raw-strings-qq"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."rio" or (errorHandler.buildDepError "rio"))
            (hsPkgs."rio-orphans" or (errorHandler.buildDepError "rio-orphans"))
            (hsPkgs."rio-prettyprint" or (errorHandler.buildDepError "rio-prettyprint"))
            (hsPkgs."tar-conduit" or (errorHandler.buildDepError "tar-conduit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."text-metrics" or (errorHandler.buildDepError "text-metrics"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."unix-compat" or (errorHandler.buildDepError "unix-compat"))
            (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
            (hsPkgs."zip-archive" or (errorHandler.buildDepError "zip-archive"))
            ];
          buildable = true;
          };
        };
      };
    }