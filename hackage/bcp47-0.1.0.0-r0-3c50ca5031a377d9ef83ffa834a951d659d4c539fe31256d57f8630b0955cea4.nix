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
      identifier = { name = "bcp47"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2019 Freckle Education";
      maintainer = "engineering@freckle.com";
      author = "Evan Rutledge Borden";
      homepage = "https://github.com/freckle/bcp47#readme";
      url = "";
      synopsis = "Language tags as specified by BCP 47";
      description = "/Language tags for use in cases where it is desirable to indicate the/\n/language used in an information object./\n\n/ - /<https://tools.ietf.org/html/bcp47>\n\nThis package exposes a language tag data type 'BCP47' and a 'Trie' data\nstructure for collecting and querying information that varies based on\nlanguage tag.\n\n> import Data.BCP47 (en, enGB, sw)\n> import Data.BCP47.Trie (Trie, fromList, lookup)\n>\n> color :: Trie Text\n> color = fromList [(en, \"color\"), (sw, \"rangi\")]\n>\n> main = do\n>   print \$ match en color -- Just \"color\"\n>   print \$ match enGB color -- Nothing\n>   print \$ lookup enGB color -- Just \"color\"";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."country" or (buildDepError "country"))
          (hsPkgs."generic-arbitrary" or (buildDepError "generic-arbitrary"))
          (hsPkgs."iso639" or (buildDepError "iso639"))
          (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
          (hsPkgs."text" or (buildDepError "text"))
          ];
        };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."doctest" or (buildDepError "doctest"))
            ];
          };
        "spec" = {
          depends = [
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bcp47" or (buildDepError "bcp47"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."country" or (buildDepError "country"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."iso639" or (buildDepError "iso639"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          };
        };
      };
    }