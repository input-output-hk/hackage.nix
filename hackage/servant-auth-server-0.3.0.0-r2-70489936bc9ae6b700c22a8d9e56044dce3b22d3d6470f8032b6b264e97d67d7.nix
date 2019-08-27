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
      specVersion = "1.10";
      identifier = { name = "servant-auth-server"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) Julian K. Arni";
      maintainer = "jkarni@gmail.com";
      author = "Julian K. Arni";
      homepage = "http://github.com/plow-technologies/servant-auth#readme";
      url = "";
      synopsis = "servant-server/servant-auth compatibility";
      description = "This package provides the required instances for using the @Auth@ combinator\nin your 'servant' server.\n\nBoth cookie- and token- (REST API) based authentication is provided.\n\nFor a quick overview of the usage, see the <http://github.com/plow-technologies/servant-auth#readme README>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."servant-auth" or (buildDepError "servant-auth"))
          (hsPkgs."cookie" or (buildDepError "cookie"))
          (hsPkgs."wai" or (buildDepError "wai"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."bytestring-conversion" or (buildDepError "bytestring-conversion"))
          (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
          (hsPkgs."jose" or (buildDepError "jose"))
          (hsPkgs."monad-time" or (buildDepError "monad-time"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."servant-server" or (buildDepError "servant-server"))
          (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
          (hsPkgs."blaze-builder" or (buildDepError "blaze-builder"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."entropy" or (buildDepError "entropy"))
          (hsPkgs."crypto-api" or (buildDepError "crypto-api"))
          (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
          (hsPkgs."http-api-data" or (buildDepError "http-api-data"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."tagged" or (buildDepError "tagged"))
          ];
        };
      exes = {
        "readme" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."cookie" or (buildDepError "cookie"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."bytestring-conversion" or (buildDepError "bytestring-conversion"))
            (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
            (hsPkgs."jose" or (buildDepError "jose"))
            (hsPkgs."monad-time" or (buildDepError "monad-time"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."servant-server" or (buildDepError "servant-server"))
            (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
            (hsPkgs."blaze-builder" or (buildDepError "blaze-builder"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."entropy" or (buildDepError "entropy"))
            (hsPkgs."crypto-api" or (buildDepError "crypto-api"))
            (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
            (hsPkgs."http-api-data" or (buildDepError "http-api-data"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."tagged" or (buildDepError "tagged"))
            (hsPkgs."servant-auth" or (buildDepError "servant-auth"))
            (hsPkgs."servant-auth-server" or (buildDepError "servant-auth-server"))
            (hsPkgs."servant-server" or (buildDepError "servant-server"))
            (hsPkgs."warp" or (buildDepError "warp"))
            (hsPkgs."markdown-unlit" or (buildDepError "markdown-unlit"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."servant-auth" or (buildDepError "servant-auth"))
            (hsPkgs."cookie" or (buildDepError "cookie"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."bytestring-conversion" or (buildDepError "bytestring-conversion"))
            (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
            (hsPkgs."jose" or (buildDepError "jose"))
            (hsPkgs."monad-time" or (buildDepError "monad-time"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."servant-server" or (buildDepError "servant-server"))
            (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
            (hsPkgs."blaze-builder" or (buildDepError "blaze-builder"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."entropy" or (buildDepError "entropy"))
            (hsPkgs."crypto-api" or (buildDepError "crypto-api"))
            (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
            (hsPkgs."http-api-data" or (buildDepError "http-api-data"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."tagged" or (buildDepError "tagged"))
            (hsPkgs."servant-auth-server" or (buildDepError "servant-auth-server"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."lens-aeson" or (buildDepError "lens-aeson"))
            (hsPkgs."warp" or (buildDepError "warp"))
            (hsPkgs."wreq" or (buildDepError "wreq"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."http-client" or (buildDepError "http-client"))
            ];
          };
        };
      };
    }