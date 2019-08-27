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
      identifier = { name = "haskell-tools-demo"; version = "1.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "kelemzol@elte.hu";
      author = "Zoltán Kelemen";
      homepage = "https://github.com/haskell-tools/haskell-tools";
      url = "";
      synopsis = "A web-based demo for Haskell-tools Refactor.";
      description = "Allows websocket clients to connect and performs refactorings on demand. The clients maintain a continous connection with the server, sending changes in the source files. When a refactor request is received, it performs the changes and sends the modified source files to the client.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."warp" or (buildDepError "warp"))
          (hsPkgs."wai" or (buildDepError "wai"))
          (hsPkgs."websockets" or (buildDepError "websockets"))
          (hsPkgs."wai-websockets" or (buildDepError "wai-websockets"))
          (hsPkgs."references" or (buildDepError "references"))
          (hsPkgs."ghc" or (buildDepError "ghc"))
          (hsPkgs."ghc-paths" or (buildDepError "ghc-paths"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."haskell-tools-ast" or (buildDepError "haskell-tools-ast"))
          (hsPkgs."haskell-tools-backend-ghc" or (buildDepError "haskell-tools-backend-ghc"))
          (hsPkgs."haskell-tools-prettyprint" or (buildDepError "haskell-tools-prettyprint"))
          (hsPkgs."haskell-tools-builtin-refactorings" or (buildDepError "haskell-tools-builtin-refactorings"))
          (hsPkgs."haskell-tools-refactor" or (buildDepError "haskell-tools-refactor"))
          ];
        };
      exes = {
        "ht-demo" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."haskell-tools-demo" or (buildDepError "haskell-tools-demo"))
            ];
          };
        };
      tests = {
        "haskell-tools-demo-tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."websockets" or (buildDepError "websockets"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."haskell-tools-demo" or (buildDepError "haskell-tools-demo"))
            ];
          };
        };
      };
    }