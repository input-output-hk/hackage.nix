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
      identifier = { name = "socketson"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "pfiff@hax-f.net";
      author = "Philipp Pfeiffer";
      homepage = "https://github.com/aphorisme/socketson";
      url = "";
      synopsis = "A small websocket backend provider.";
      description = "socketson is technically a small websocket server with a predefined protocol with the intention to be run a backend.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
          (hsPkgs."crypto-api" or (buildDepError "crypto-api"))
          (hsPkgs."DRBG" or (buildDepError "DRBG"))
          (hsPkgs."websockets" or (buildDepError "websockets"))
          (hsPkgs."wai-websockets" or (buildDepError "wai-websockets"))
          (hsPkgs."wai" or (buildDepError "wai"))
          (hsPkgs."warp" or (buildDepError "warp"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."leveldb-haskell" or (buildDepError "leveldb-haskell"))
          (hsPkgs."cereal" or (buildDepError "cereal"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."either" or (buildDepError "either"))
          (hsPkgs."errors" or (buildDepError "errors"))
          (hsPkgs."lifted-base" or (buildDepError "lifted-base"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."transformers-base" or (buildDepError "transformers-base"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          ];
        };
      exes = {
        "socketson-sample" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."socketson" or (buildDepError "socketson"))
            (hsPkgs."either" or (buildDepError "either"))
            ];
          };
        "socketson-sample-client" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."socketson" or (buildDepError "socketson"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."websockets" or (buildDepError "websockets"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          };
        };
      };
    }