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
      specVersion = "1.12";
      identifier = { name = "pantry"; version = "0.4.0.1"; };
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
          (hsPkgs."Cabal" or (buildDepError "Cabal"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."ansi-terminal" or (buildDepError "ansi-terminal"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."casa-client" or (buildDepError "casa-client"))
          (hsPkgs."casa-types" or (buildDepError "casa-types"))
          (hsPkgs."conduit" or (buildDepError "conduit"))
          (hsPkgs."conduit-extra" or (buildDepError "conduit-extra"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."cryptonite" or (buildDepError "cryptonite"))
          (hsPkgs."cryptonite-conduit" or (buildDepError "cryptonite-conduit"))
          (hsPkgs."digest" or (buildDepError "digest"))
          (hsPkgs."filelock" or (buildDepError "filelock"))
          (hsPkgs."generic-deriving" or (buildDepError "generic-deriving"))
          (hsPkgs."hackage-security" or (buildDepError "hackage-security"))
          (hsPkgs."hpack" or (buildDepError "hpack"))
          (hsPkgs."http-client" or (buildDepError "http-client"))
          (hsPkgs."http-client-tls" or (buildDepError "http-client-tls"))
          (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
          (hsPkgs."http-download" or (buildDepError "http-download"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."memory" or (buildDepError "memory"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."network-uri" or (buildDepError "network-uri"))
          (hsPkgs."path" or (buildDepError "path"))
          (hsPkgs."path-io" or (buildDepError "path-io"))
          (hsPkgs."persistent" or (buildDepError "persistent"))
          (hsPkgs."persistent-sqlite" or (buildDepError "persistent-sqlite"))
          (hsPkgs."persistent-template" or (buildDepError "persistent-template"))
          (hsPkgs."primitive" or (buildDepError "primitive"))
          (hsPkgs."resourcet" or (buildDepError "resourcet"))
          (hsPkgs."rio" or (buildDepError "rio"))
          (hsPkgs."rio-orphans" or (buildDepError "rio-orphans"))
          (hsPkgs."rio-prettyprint" or (buildDepError "rio-prettyprint"))
          (hsPkgs."tar-conduit" or (buildDepError "tar-conduit"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."text-metrics" or (buildDepError "text-metrics"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."unix-compat" or (buildDepError "unix-compat"))
          (hsPkgs."unliftio" or (buildDepError "unliftio"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."yaml" or (buildDepError "yaml"))
          (hsPkgs."zip-archive" or (buildDepError "zip-archive"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."ansi-terminal" or (buildDepError "ansi-terminal"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."casa-client" or (buildDepError "casa-client"))
            (hsPkgs."casa-types" or (buildDepError "casa-types"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."conduit-extra" or (buildDepError "conduit-extra"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."cryptonite" or (buildDepError "cryptonite"))
            (hsPkgs."cryptonite-conduit" or (buildDepError "cryptonite-conduit"))
            (hsPkgs."digest" or (buildDepError "digest"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            (hsPkgs."filelock" or (buildDepError "filelock"))
            (hsPkgs."generic-deriving" or (buildDepError "generic-deriving"))
            (hsPkgs."hackage-security" or (buildDepError "hackage-security"))
            (hsPkgs."hedgehog" or (buildDepError "hedgehog"))
            (hsPkgs."hpack" or (buildDepError "hpack"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."http-client" or (buildDepError "http-client"))
            (hsPkgs."http-client-tls" or (buildDepError "http-client-tls"))
            (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
            (hsPkgs."http-download" or (buildDepError "http-download"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."memory" or (buildDepError "memory"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."network-uri" or (buildDepError "network-uri"))
            (hsPkgs."pantry" or (buildDepError "pantry"))
            (hsPkgs."path" or (buildDepError "path"))
            (hsPkgs."path-io" or (buildDepError "path-io"))
            (hsPkgs."persistent" or (buildDepError "persistent"))
            (hsPkgs."persistent-sqlite" or (buildDepError "persistent-sqlite"))
            (hsPkgs."persistent-template" or (buildDepError "persistent-template"))
            (hsPkgs."primitive" or (buildDepError "primitive"))
            (hsPkgs."raw-strings-qq" or (buildDepError "raw-strings-qq"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."rio" or (buildDepError "rio"))
            (hsPkgs."rio-orphans" or (buildDepError "rio-orphans"))
            (hsPkgs."rio-prettyprint" or (buildDepError "rio-prettyprint"))
            (hsPkgs."tar-conduit" or (buildDepError "tar-conduit"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."text-metrics" or (buildDepError "text-metrics"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."unix-compat" or (buildDepError "unix-compat"))
            (hsPkgs."unliftio" or (buildDepError "unliftio"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."yaml" or (buildDepError "yaml"))
            (hsPkgs."zip-archive" or (buildDepError "zip-archive"))
            ];
          buildable = true;
          };
        };
      };
    }