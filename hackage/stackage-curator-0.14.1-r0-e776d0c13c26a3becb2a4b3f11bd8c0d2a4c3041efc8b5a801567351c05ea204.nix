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
    flags = { monad_unlift_0_2 = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "stackage-curator"; version = "0.14.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "michael@fpcomplete.com";
      author = "Michael Snoyman";
      homepage = "https://github.com/fpco/stackage-curator";
      url = "";
      synopsis = "Tools for curating Stackage bundles";
      description = "Please see <http://www.stackage.org/package/stackage-curator> for a description and documentation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."Cabal" or (buildDepError "Cabal"))
          (hsPkgs."tar" or (buildDepError "tar"))
          (hsPkgs."zlib" or (buildDepError "zlib"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."old-locale" or (buildDepError "old-locale"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          (hsPkgs."conduit-extra" or (buildDepError "conduit-extra"))
          (hsPkgs."classy-prelude-conduit" or (buildDepError "classy-prelude-conduit"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."system-fileio" or (buildDepError "system-fileio"))
          (hsPkgs."system-filepath" or (buildDepError "system-filepath"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."yaml" or (buildDepError "yaml"))
          (hsPkgs."unix-compat" or (buildDepError "unix-compat"))
          (hsPkgs."http-client" or (buildDepError "http-client"))
          (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
          (hsPkgs."http-client-tls" or (buildDepError "http-client-tls"))
          (hsPkgs."temporary" or (buildDepError "temporary"))
          (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."mono-traversable" or (buildDepError "mono-traversable"))
          (hsPkgs."async" or (buildDepError "async"))
          (hsPkgs."streaming-commons" or (buildDepError "streaming-commons"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."xml-conduit" or (buildDepError "xml-conduit"))
          (hsPkgs."conduit" or (buildDepError "conduit"))
          (hsPkgs."blaze-html" or (buildDepError "blaze-html"))
          (hsPkgs."html-conduit" or (buildDepError "html-conduit"))
          (hsPkgs."mime-types" or (buildDepError "mime-types"))
          (hsPkgs."amazonka" or (buildDepError "amazonka"))
          (hsPkgs."amazonka-s3" or (buildDepError "amazonka-s3"))
          (hsPkgs."amazonka-core" or (buildDepError "amazonka-core"))
          (hsPkgs."xml-types" or (buildDepError "xml-types"))
          (hsPkgs."base16-bytestring" or (buildDepError "base16-bytestring"))
          (hsPkgs."byteable" or (buildDepError "byteable"))
          (hsPkgs."cryptohash" or (buildDepError "cryptohash"))
          (hsPkgs."cryptohash-conduit" or (buildDepError "cryptohash-conduit"))
          (hsPkgs."resourcet" or (buildDepError "resourcet"))
          (hsPkgs."stackage-install" or (buildDepError "stackage-install"))
          (hsPkgs."lucid" or (buildDepError "lucid"))
          (hsPkgs."store" or (buildDepError "store"))
          (hsPkgs."syb" or (buildDepError "syb"))
          (hsPkgs."safe" or (buildDepError "safe"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          ] ++ (if flags.monad_unlift_0_2
          then [
            (hsPkgs."monad-unlift" or (buildDepError "monad-unlift"))
            (hsPkgs."monad-unlift-ref" or (buildDepError "monad-unlift-ref"))
            ]
          else [ (hsPkgs."monad-unlift" or (buildDepError "monad-unlift")) ]);
        };
      exes = {
        "stackage-curator" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."stackage-curator" or (buildDepError "stackage-curator"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."optparse-simple" or (buildDepError "optparse-simple"))
            (hsPkgs."system-filepath" or (buildDepError "system-filepath"))
            (hsPkgs."http-client" or (buildDepError "http-client"))
            (hsPkgs."http-client-tls" or (buildDepError "http-client-tls"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          };
        "stackage-build-plan" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."stackage-curator" or (buildDepError "stackage-curator"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."optparse-simple" or (buildDepError "optparse-simple"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            ];
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."stackage-curator" or (buildDepError "stackage-curator"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."classy-prelude-conduit" or (buildDepError "classy-prelude-conduit"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."yaml" or (buildDepError "yaml"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."http-client" or (buildDepError "http-client"))
            (hsPkgs."http-client-tls" or (buildDepError "http-client-tls"))
            (hsPkgs."directory" or (buildDepError "directory"))
            ];
          };
        };
      };
    }