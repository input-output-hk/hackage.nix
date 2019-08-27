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
    flags = {
      pinpon-executable = true;
      pinpon-gpio-executable = true;
      pinpon-ring-executable = true;
      test-doctests = true;
      test-hlint = false;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "pinpon"; version = "0.2.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2018, Quixoftic, LLC";
      maintainer = "Drew Hess <dhess-src@quixoftic.com>";
      author = "Drew Hess <dhess-src@quixoftic.com>";
      homepage = "https://github.com/quixoftic/pinpon#readme";
      url = "";
      synopsis = "A gateway for various cloud notification services";
      description = "@pinpon@ is a gateway for various cloud notification services, such\nas the Amazon AWS SNS service.\n\nThink of @pinpon@ as a hub for dispatching notifications originating\nfrom multiple notification sources. Clients of the @pinpon@ service\ncreate topics and send notifications via the REST-ish @pinpon@\nservice, and the @pinpon@ server takes care of the per-service\ndetails and communicating with the upstream cloud services.\n\nAdvantages of this approach, compared to programming directly to the\nindividual notification services' interfaces, are:\n\n* A common API for all supported notification services.\n\n* The secret credentials required to communicate with each cloud\nnotification service can be kept in a central location (namely,\nthe @pinpon@ server), rather than being distributed to each\nnotification source host, therefore reducing the attack surface.\n\n* Hosts which send notifications via the @pinpon@ gateway can be\nfirewalled from the public Internet. This is especially useful in\nIoT applications.\n\nCurrently-supported notification services:\n\n* Amazon AWS SNS";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."aeson-pretty" or (buildDepError "aeson-pretty"))
          (hsPkgs."amazonka" or (buildDepError "amazonka"))
          (hsPkgs."amazonka-core" or (buildDepError "amazonka-core"))
          (hsPkgs."amazonka-sns" or (buildDepError "amazonka-sns"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."http-client" or (buildDepError "http-client"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."lucid" or (buildDepError "lucid"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."protolude" or (buildDepError "protolude"))
          (hsPkgs."resourcet" or (buildDepError "resourcet"))
          (hsPkgs."servant" or (buildDepError "servant"))
          (hsPkgs."servant-client" or (buildDepError "servant-client"))
          (hsPkgs."servant-docs" or (buildDepError "servant-docs"))
          (hsPkgs."servant-lucid" or (buildDepError "servant-lucid"))
          (hsPkgs."servant-server" or (buildDepError "servant-server"))
          (hsPkgs."servant-swagger" or (buildDepError "servant-swagger"))
          (hsPkgs."servant-swagger-ui" or (buildDepError "servant-swagger-ui"))
          (hsPkgs."swagger2" or (buildDepError "swagger2"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."transformers-base" or (buildDepError "transformers-base"))
          (hsPkgs."wai" or (buildDepError "wai"))
          (hsPkgs."warp" or (buildDepError "warp"))
          ];
        };
      exes = {
        "pinpon" = {
          depends = (pkgs.lib).optionals (!(!flags.pinpon-executable)) [
            (hsPkgs."amazonka" or (buildDepError "amazonka"))
            (hsPkgs."amazonka-sns" or (buildDepError "amazonka-sns"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."optparse-text" or (buildDepError "optparse-text"))
            (hsPkgs."pinpon" or (buildDepError "pinpon"))
            (hsPkgs."protolude" or (buildDepError "protolude"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."warp" or (buildDepError "warp"))
            ];
          };
        "pinpon-gpio" = {
          depends = (pkgs.lib).optionals (!(!flags.pinpon-gpio-executable)) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            (hsPkgs."hpio" or (buildDepError "hpio"))
            (hsPkgs."http-client" or (buildDepError "http-client"))
            (hsPkgs."http-client-tls" or (buildDepError "http-client-tls"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."optparse-text" or (buildDepError "optparse-text"))
            (hsPkgs."pinpon" or (buildDepError "pinpon"))
            (hsPkgs."protolude" or (buildDepError "protolude"))
            (hsPkgs."servant-client" or (buildDepError "servant-client"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."warp" or (buildDepError "warp"))
            ];
          };
        "pinpon-ring" = {
          depends = (pkgs.lib).optionals (!(!flags.pinpon-ring-executable)) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            (hsPkgs."http-client" or (buildDepError "http-client"))
            (hsPkgs."http-client-tls" or (buildDepError "http-client-tls"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."optparse-text" or (buildDepError "optparse-text"))
            (hsPkgs."pinpon" or (buildDepError "pinpon"))
            (hsPkgs."protolude" or (buildDepError "protolude"))
            (hsPkgs."servant-client" or (buildDepError "servant-client"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."warp" or (buildDepError "warp"))
            ];
          };
        };
      tests = {
        "doctest" = {
          depends = (pkgs.lib).optionals (!(!flags.test-doctests)) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."doctest" or (buildDepError "doctest"))
            (hsPkgs."protolude" or (buildDepError "protolude"))
            ];
          };
        "hlint" = {
          depends = (pkgs.lib).optionals (!(!flags.test-hlint)) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hlint" or (buildDepError "hlint"))
            (hsPkgs."protolude" or (buildDepError "protolude"))
            ];
          };
        "spec" = {
          depends = [
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."pinpon" or (buildDepError "pinpon"))
            (hsPkgs."protolude" or (buildDepError "protolude"))
            (hsPkgs."quickcheck-instances" or (buildDepError "quickcheck-instances"))
            (hsPkgs."servant-swagger" or (buildDepError "servant-swagger"))
            ] ++ (pkgs.lib).optionals (!(!flags.test-hlint)) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hlint" or (buildDepError "hlint"))
            (hsPkgs."protolude" or (buildDepError "protolude"))
            ];
          };
        };
      };
    }