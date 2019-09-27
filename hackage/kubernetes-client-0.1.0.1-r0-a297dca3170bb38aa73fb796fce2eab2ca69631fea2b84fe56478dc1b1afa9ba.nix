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
      identifier = { name = "kubernetes-client"; version = "0.1.0.1"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "Shimin Guo <smguo2001@gmail.com>,\nAkshay Mankar <itsakshaymankar@gmail.com>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Client library for Kubernetes";
      description = "Client library for interacting with a Kubernetes cluster.\n\nThis package contains hand-written code while kubernetes-client-core contains code auto-generated from the OpenAPI spec.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."connection" or (buildDepError "connection"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
          (hsPkgs."http-client" or (buildDepError "http-client"))
          (hsPkgs."http-client-tls" or (buildDepError "http-client-tls"))
          (hsPkgs."kubernetes-client-core" or (buildDepError "kubernetes-client-core"))
          (hsPkgs."microlens" or (buildDepError "microlens"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."pem" or (buildDepError "pem"))
          (hsPkgs."safe-exceptions" or (buildDepError "safe-exceptions"))
          (hsPkgs."streaming-bytestring" or (buildDepError "streaming-bytestring"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."tls" or (buildDepError "tls"))
          (hsPkgs."x509" or (buildDepError "x509"))
          (hsPkgs."x509-store" or (buildDepError "x509-store"))
          (hsPkgs."x509-system" or (buildDepError "x509-system"))
          (hsPkgs."x509-validation" or (buildDepError "x509-validation"))
          ];
        buildable = true;
        };
      tests = {
        "example" = {
          depends = [
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."connection" or (buildDepError "connection"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
            (hsPkgs."http-client" or (buildDepError "http-client"))
            (hsPkgs."http-client-tls" or (buildDepError "http-client-tls"))
            (hsPkgs."kubernetes-client" or (buildDepError "kubernetes-client"))
            (hsPkgs."kubernetes-client-core" or (buildDepError "kubernetes-client-core"))
            (hsPkgs."microlens" or (buildDepError "microlens"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."pem" or (buildDepError "pem"))
            (hsPkgs."safe-exceptions" or (buildDepError "safe-exceptions"))
            (hsPkgs."streaming-bytestring" or (buildDepError "streaming-bytestring"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."tls" or (buildDepError "tls"))
            (hsPkgs."x509" or (buildDepError "x509"))
            (hsPkgs."x509-store" or (buildDepError "x509-store"))
            (hsPkgs."x509-system" or (buildDepError "x509-system"))
            (hsPkgs."x509-validation" or (buildDepError "x509-validation"))
            ];
          buildable = true;
          };
        "spec" = {
          depends = [
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."connection" or (buildDepError "connection"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."http-client" or (buildDepError "http-client"))
            (hsPkgs."http-client-tls" or (buildDepError "http-client-tls"))
            (hsPkgs."kubernetes-client" or (buildDepError "kubernetes-client"))
            (hsPkgs."kubernetes-client-core" or (buildDepError "kubernetes-client-core"))
            (hsPkgs."microlens" or (buildDepError "microlens"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."pem" or (buildDepError "pem"))
            (hsPkgs."safe-exceptions" or (buildDepError "safe-exceptions"))
            (hsPkgs."streaming-bytestring" or (buildDepError "streaming-bytestring"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."tls" or (buildDepError "tls"))
            (hsPkgs."x509" or (buildDepError "x509"))
            (hsPkgs."x509-store" or (buildDepError "x509-store"))
            (hsPkgs."x509-system" or (buildDepError "x509-system"))
            (hsPkgs."x509-validation" or (buildDepError "x509-validation"))
            (hsPkgs."yaml" or (buildDepError "yaml"))
            ];
          buildable = true;
          };
        };
      };
    }