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
      identifier = { name = "DOH"; version = "0.1.3.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "yigitozkavci8@gmail.com";
      author = "Yiğit Özkavcı";
      homepage = "";
      url = "";
      synopsis = "Complete API bindings for DigitalOcean API V2";
      description = "Complete API bindings for DigitalOcean API V2\n\nTo get started, see @Network.DigitalOcean@ module below.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."http-client" or (buildDepError "http-client"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."http-client-tls" or (buildDepError "http-client-tls"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."network-uri" or (buildDepError "network-uri"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."aeson-casing" or (buildDepError "aeson-casing"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          ];
        };
      tests = {
        "do-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."http-client" or (buildDepError "http-client"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."http-client-tls" or (buildDepError "http-client-tls"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."network-uri" or (buildDepError "network-uri"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."aeson-casing" or (buildDepError "aeson-casing"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-instances" or (buildDepError "quickcheck-instances"))
            (hsPkgs."interpolatedstring-perl6" or (buildDepError "interpolatedstring-perl6"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            ];
          };
        };
      };
    }