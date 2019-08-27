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
    flags = { build-examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "config-ini"; version = "0.1.2.1"; };
      license = "BSD-3-Clause";
      copyright = "©2016 Getty Ritter";
      maintainer = "Getty Ritter <gettyritter@gmail.com>";
      author = "Getty Ritter <gettyritter@gmail.com>";
      homepage = "https://github.com/aisamanra/config-ini";
      url = "";
      synopsis = "A library for simple INI-based configuration files.";
      description = "The @config-ini@ library is a small monadic language\nfor writing simple configuration languages with convenient,\nhuman-readable error messages.\n\n> parseConfig :: IniParser (Text, Int, Bool)\n> parseConfig = section \"NETWORK\" \$ do\n>   user <- field        \"user\"\n>   port <- fieldOf      \"port\" number\n>   enc  <- fieldFlagDef \"encryption\" True\n>   return (user, port, enc)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
          ];
        };
      exes = {
        "basic-example" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."config-ini" or (buildDepError "config-ini"))
            ];
          };
        "config-example" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."config-ini" or (buildDepError "config-ini"))
            ];
          };
        };
      tests = {
        "test-ini-compat" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."ini" or (buildDepError "ini"))
            (hsPkgs."config-ini" or (buildDepError "config-ini"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          };
        "test-prewritten" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."config-ini" or (buildDepError "config-ini"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."directory" or (buildDepError "directory"))
            ];
          };
        "test-doctest" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."doctest" or (buildDepError "doctest"))
            (hsPkgs."microlens" or (buildDepError "microlens"))
            ];
          };
        };
      };
    }