{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "pantry"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018-2019 FP Complete";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "https://github.com/commercialhaskell/pantry#readme";
      url = "";
      synopsis = "Content addressable Haskell package management";
      description = "Please see the README on Github at <https://github.com/commercialhaskell/pantry#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."ansi-terminal" or ((hsPkgs.pkgs-errors).buildDepError "ansi-terminal"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."casa-client" or ((hsPkgs.pkgs-errors).buildDepError "casa-client"))
          (hsPkgs."casa-types" or ((hsPkgs.pkgs-errors).buildDepError "casa-types"))
          (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
          (hsPkgs."conduit-extra" or ((hsPkgs.pkgs-errors).buildDepError "conduit-extra"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."cryptonite" or ((hsPkgs.pkgs-errors).buildDepError "cryptonite"))
          (hsPkgs."cryptonite-conduit" or ((hsPkgs.pkgs-errors).buildDepError "cryptonite-conduit"))
          (hsPkgs."digest" or ((hsPkgs.pkgs-errors).buildDepError "digest"))
          (hsPkgs."filelock" or ((hsPkgs.pkgs-errors).buildDepError "filelock"))
          (hsPkgs."generic-deriving" or ((hsPkgs.pkgs-errors).buildDepError "generic-deriving"))
          (hsPkgs."hackage-security" or ((hsPkgs.pkgs-errors).buildDepError "hackage-security"))
          (hsPkgs."hpack" or ((hsPkgs.pkgs-errors).buildDepError "hpack"))
          (hsPkgs."http-client" or ((hsPkgs.pkgs-errors).buildDepError "http-client"))
          (hsPkgs."http-client-tls" or ((hsPkgs.pkgs-errors).buildDepError "http-client-tls"))
          (hsPkgs."http-conduit" or ((hsPkgs.pkgs-errors).buildDepError "http-conduit"))
          (hsPkgs."http-download" or ((hsPkgs.pkgs-errors).buildDepError "http-download"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."memory" or ((hsPkgs.pkgs-errors).buildDepError "memory"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."network-uri" or ((hsPkgs.pkgs-errors).buildDepError "network-uri"))
          (hsPkgs."path" or ((hsPkgs.pkgs-errors).buildDepError "path"))
          (hsPkgs."path-io" or ((hsPkgs.pkgs-errors).buildDepError "path-io"))
          (hsPkgs."persistent" or ((hsPkgs.pkgs-errors).buildDepError "persistent"))
          (hsPkgs."persistent-sqlite" or ((hsPkgs.pkgs-errors).buildDepError "persistent-sqlite"))
          (hsPkgs."persistent-template" or ((hsPkgs.pkgs-errors).buildDepError "persistent-template"))
          (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
          (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
          (hsPkgs."rio" or ((hsPkgs.pkgs-errors).buildDepError "rio"))
          (hsPkgs."rio-orphans" or ((hsPkgs.pkgs-errors).buildDepError "rio-orphans"))
          (hsPkgs."rio-prettyprint" or ((hsPkgs.pkgs-errors).buildDepError "rio-prettyprint"))
          (hsPkgs."tar-conduit" or ((hsPkgs.pkgs-errors).buildDepError "tar-conduit"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."text-metrics" or ((hsPkgs.pkgs-errors).buildDepError "text-metrics"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."unix-compat" or ((hsPkgs.pkgs-errors).buildDepError "unix-compat"))
          (hsPkgs."unliftio" or ((hsPkgs.pkgs-errors).buildDepError "unliftio"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."yaml" or ((hsPkgs.pkgs-errors).buildDepError "yaml"))
          (hsPkgs."zip-archive" or ((hsPkgs.pkgs-errors).buildDepError "zip-archive"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."ansi-terminal" or ((hsPkgs.pkgs-errors).buildDepError "ansi-terminal"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."casa-client" or ((hsPkgs.pkgs-errors).buildDepError "casa-client"))
            (hsPkgs."casa-types" or ((hsPkgs.pkgs-errors).buildDepError "casa-types"))
            (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
            (hsPkgs."conduit-extra" or ((hsPkgs.pkgs-errors).buildDepError "conduit-extra"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."cryptonite" or ((hsPkgs.pkgs-errors).buildDepError "cryptonite"))
            (hsPkgs."cryptonite-conduit" or ((hsPkgs.pkgs-errors).buildDepError "cryptonite-conduit"))
            (hsPkgs."digest" or ((hsPkgs.pkgs-errors).buildDepError "digest"))
            (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
            (hsPkgs."filelock" or ((hsPkgs.pkgs-errors).buildDepError "filelock"))
            (hsPkgs."generic-deriving" or ((hsPkgs.pkgs-errors).buildDepError "generic-deriving"))
            (hsPkgs."hackage-security" or ((hsPkgs.pkgs-errors).buildDepError "hackage-security"))
            (hsPkgs."hedgehog" or ((hsPkgs.pkgs-errors).buildDepError "hedgehog"))
            (hsPkgs."hpack" or ((hsPkgs.pkgs-errors).buildDepError "hpack"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."http-client" or ((hsPkgs.pkgs-errors).buildDepError "http-client"))
            (hsPkgs."http-client-tls" or ((hsPkgs.pkgs-errors).buildDepError "http-client-tls"))
            (hsPkgs."http-conduit" or ((hsPkgs.pkgs-errors).buildDepError "http-conduit"))
            (hsPkgs."http-download" or ((hsPkgs.pkgs-errors).buildDepError "http-download"))
            (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
            (hsPkgs."memory" or ((hsPkgs.pkgs-errors).buildDepError "memory"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."network-uri" or ((hsPkgs.pkgs-errors).buildDepError "network-uri"))
            (hsPkgs."pantry" or ((hsPkgs.pkgs-errors).buildDepError "pantry"))
            (hsPkgs."path" or ((hsPkgs.pkgs-errors).buildDepError "path"))
            (hsPkgs."path-io" or ((hsPkgs.pkgs-errors).buildDepError "path-io"))
            (hsPkgs."persistent" or ((hsPkgs.pkgs-errors).buildDepError "persistent"))
            (hsPkgs."persistent-sqlite" or ((hsPkgs.pkgs-errors).buildDepError "persistent-sqlite"))
            (hsPkgs."persistent-template" or ((hsPkgs.pkgs-errors).buildDepError "persistent-template"))
            (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
            (hsPkgs."raw-strings-qq" or ((hsPkgs.pkgs-errors).buildDepError "raw-strings-qq"))
            (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
            (hsPkgs."rio" or ((hsPkgs.pkgs-errors).buildDepError "rio"))
            (hsPkgs."rio-orphans" or ((hsPkgs.pkgs-errors).buildDepError "rio-orphans"))
            (hsPkgs."rio-prettyprint" or ((hsPkgs.pkgs-errors).buildDepError "rio-prettyprint"))
            (hsPkgs."tar-conduit" or ((hsPkgs.pkgs-errors).buildDepError "tar-conduit"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."text-metrics" or ((hsPkgs.pkgs-errors).buildDepError "text-metrics"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."unix-compat" or ((hsPkgs.pkgs-errors).buildDepError "unix-compat"))
            (hsPkgs."unliftio" or ((hsPkgs.pkgs-errors).buildDepError "unliftio"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."yaml" or ((hsPkgs.pkgs-errors).buildDepError "yaml"))
            (hsPkgs."zip-archive" or ((hsPkgs.pkgs-errors).buildDepError "zip-archive"))
            ];
          buildable = true;
          };
        };
      };
    }