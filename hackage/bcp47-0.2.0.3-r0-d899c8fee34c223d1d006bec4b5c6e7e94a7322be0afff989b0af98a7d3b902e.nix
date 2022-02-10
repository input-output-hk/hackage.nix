{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "bcp47"; version = "0.2.0.3"; };
      license = "MIT";
      copyright = "2019 Freckle Education";
      maintainer = "engineering@freckle.com";
      author = "Evan Rutledge Borden";
      homepage = "https://github.com/freckle/bcp47#readme";
      url = "";
      synopsis = "Language tags as specified by BCP 47";
      description = "/Language tags for use in cases where it is desirable to indicate the/\n/language used in an information object./\n\n/ - /<https://tools.ietf.org/html/bcp47>\n\nThis package exposes a language tag data type 'BCP47' and a 'Trie' data\nstructure for collecting and querying information that varies based on\nlanguage tag.\n\n> import Data.BCP47 (en, enGB, sw)\n> import Data.BCP47.Trie (Trie, fromList, lookup)\n>\n> color :: Trie Text\n> color = fromList [(en, \"color\"), (sw, \"rangi\")]\n>\n> main = do\n>   print $ match en color -- Just \"color\"\n>   print $ match enGB color -- Nothing\n>   print $ lookup enGB color -- Just \"color\"";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."country" or (errorHandler.buildDepError "country"))
          (hsPkgs."generic-arbitrary" or (errorHandler.buildDepError "generic-arbitrary"))
          (hsPkgs."iso639" or (errorHandler.buildDepError "iso639"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            ];
          buildable = true;
          };
        "spec" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bcp47" or (errorHandler.buildDepError "bcp47"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."country" or (errorHandler.buildDepError "country"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."iso639" or (errorHandler.buildDepError "iso639"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }