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
    flags = { network-bytestring = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "http-conduit"; version = "1.4.1.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://www.yesodweb.com/book/http-conduit";
      url = "";
      synopsis = "HTTP client package with conduit interface and HTTPS support.";
      description = "This package uses attoparsec for parsing the actual contents of the HTTP connection. It also provides higher-level functions which allow you to avoid direct usage of conduits. See <http://www.yesodweb.com/book/http-conduit> for more information.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."failure" or (buildDepError "failure"))
          (hsPkgs."resourcet" or (buildDepError "resourcet"))
          (hsPkgs."conduit" or (buildDepError "conduit"))
          (hsPkgs."zlib-conduit" or (buildDepError "zlib-conduit"))
          (hsPkgs."blaze-builder-conduit" or (buildDepError "blaze-builder-conduit"))
          (hsPkgs."attoparsec-conduit" or (buildDepError "attoparsec-conduit"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          (hsPkgs."blaze-builder" or (buildDepError "blaze-builder"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."cprng-aes" or (buildDepError "cprng-aes"))
          (hsPkgs."tls" or (buildDepError "tls"))
          (hsPkgs."tls-extra" or (buildDepError "tls-extra"))
          (hsPkgs."monad-control" or (buildDepError "monad-control"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."certificate" or (buildDepError "certificate"))
          (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
          (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
          (hsPkgs."asn1-data" or (buildDepError "asn1-data"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."transformers-base" or (buildDepError "transformers-base"))
          (hsPkgs."lifted-base" or (buildDepError "lifted-base"))
          (hsPkgs."socks" or (buildDepError "socks"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."cookie" or (buildDepError "cookie"))
          (hsPkgs."void" or (buildDepError "void"))
          (hsPkgs."regex-compat" or (buildDepError "regex-compat"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          ] ++ (if flags.network-bytestring
          then [
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."network-bytestring" or (buildDepError "network-bytestring"))
            ]
          else [ (hsPkgs."network" or (buildDepError "network")) ]);
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."failure" or (buildDepError "failure"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."zlib-conduit" or (buildDepError "zlib-conduit"))
            (hsPkgs."blaze-builder-conduit" or (buildDepError "blaze-builder-conduit"))
            (hsPkgs."attoparsec-conduit" or (buildDepError "attoparsec-conduit"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."blaze-builder" or (buildDepError "blaze-builder"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."cprng-aes" or (buildDepError "cprng-aes"))
            (hsPkgs."tls" or (buildDepError "tls"))
            (hsPkgs."tls-extra" or (buildDepError "tls-extra"))
            (hsPkgs."monad-control" or (buildDepError "monad-control"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."certificate" or (buildDepError "certificate"))
            (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
            (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
            (hsPkgs."asn1-data" or (buildDepError "asn1-data"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."transformers-base" or (buildDepError "transformers-base"))
            (hsPkgs."lifted-base" or (buildDepError "lifted-base"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."warp" or (buildDepError "warp"))
            (hsPkgs."socks" or (buildDepError "socks"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."cookie" or (buildDepError "cookie"))
            (hsPkgs."regex-compat" or (buildDepError "regex-compat"))
            (hsPkgs."network-conduit" or (buildDepError "network-conduit"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."void" or (buildDepError "void"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            ];
          buildable = true;
          };
        };
      };
    }