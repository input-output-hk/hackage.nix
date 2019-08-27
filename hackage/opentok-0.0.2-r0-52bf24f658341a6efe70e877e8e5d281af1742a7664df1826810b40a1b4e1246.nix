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
    flags = { documentation = true; };
    package = {
      specVersion = "1.18";
      identifier = { name = "opentok"; version = "0.0.2"; };
      license = "MIT";
      copyright = "2018 Aaron Rice";
      maintainer = "adrice727@gmail.com";
      author = "Aaron Rice";
      homepage = "https://github.com/adrice727/opentok-haskell";
      url = "";
      synopsis = "An OpenTok SDK for Haskell";
      description = "\nSession creation, token generation, and archive management for the OpenTok platform.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."base-compat" or (buildDepError "base-compat"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."aeson-casing" or (buildDepError "aeson-casing"))
          (hsPkgs."aeson-compat" or (buildDepError "aeson-compat"))
          (hsPkgs."base64-string" or (buildDepError "base64-string"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."convertible" or (buildDepError "convertible"))
          (hsPkgs."either" or (buildDepError "either"))
          (hsPkgs."http-client" or (buildDepError "http-client"))
          (hsPkgs."http-client-tls" or (buildDepError "http-client-tls"))
          (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."iproute" or (buildDepError "iproute"))
          (hsPkgs."jose" or (buildDepError "jose"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."monad-time" or (buildDepError "monad-time"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."SHA" or (buildDepError "SHA"))
          (hsPkgs."strings" or (buildDepError "strings"))
          (hsPkgs."uuid" or (buildDepError "uuid"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ] ++ (pkgs.lib).optional (flags.documentation) (hsPkgs."hscolour" or (buildDepError "hscolour"));
        };
      };
    }