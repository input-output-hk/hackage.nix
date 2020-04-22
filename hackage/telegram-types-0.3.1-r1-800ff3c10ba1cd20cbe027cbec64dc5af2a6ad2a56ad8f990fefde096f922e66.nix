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
      identifier = { name = "telegram-types"; version = "0.3.1"; };
      license = "BSD-3-Clause";
      copyright = "2020 Poscat";
      maintainer = "poscat@mail.poscat.moe";
      author = "Poscat";
      homepage = "https://github.com/poscat0x04/telegram-types#readme";
      url = "";
      synopsis = "Types used in Telegram bot API";
      description = "Defines various datatypes and their serialization methods useful for writing bindings to Telegram bot API.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."deriving-aeson" or (buildDepError "deriving-aeson"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."generic-lens" or (buildDepError "generic-lens"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."mime-types" or (buildDepError "mime-types"))
          (hsPkgs."open-union" or (buildDepError "open-union"))
          (hsPkgs."servant" or (buildDepError "servant"))
          (hsPkgs."servant-multipart" or (buildDepError "servant-multipart"))
          (hsPkgs."text" or (buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "telegram-types-test" = {
          depends = [
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."deriving-aeson" or (buildDepError "deriving-aeson"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."generic-lens" or (buildDepError "generic-lens"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."mime-types" or (buildDepError "mime-types"))
            (hsPkgs."open-union" or (buildDepError "open-union"))
            (hsPkgs."servant" or (buildDepError "servant"))
            (hsPkgs."servant-multipart" or (buildDepError "servant-multipart"))
            (hsPkgs."telegram-types" or (buildDepError "telegram-types"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }