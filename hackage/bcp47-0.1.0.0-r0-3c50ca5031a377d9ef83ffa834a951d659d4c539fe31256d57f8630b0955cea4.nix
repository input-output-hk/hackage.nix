{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."country" or ((hsPkgs.pkgs-errors).buildDepError "country"))
          (hsPkgs."generic-arbitrary" or ((hsPkgs.pkgs-errors).buildDepError "generic-arbitrary"))
          (hsPkgs."iso639" or ((hsPkgs.pkgs-errors).buildDepError "iso639"))
          (hsPkgs."megaparsec" or ((hsPkgs.pkgs-errors).buildDepError "megaparsec"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            ];
          buildable = true;
          };
        "spec" = {
          depends = [
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bcp47" or ((hsPkgs.pkgs-errors).buildDepError "bcp47"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."country" or ((hsPkgs.pkgs-errors).buildDepError "country"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."iso639" or ((hsPkgs.pkgs-errors).buildDepError "iso639"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }