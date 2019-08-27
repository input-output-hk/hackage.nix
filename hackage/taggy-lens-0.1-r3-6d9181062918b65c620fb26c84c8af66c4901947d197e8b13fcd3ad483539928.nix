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
      identifier = { name = "taggy-lens"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "2014 Alp Mestanogullari, Vikram Verma";
      maintainer = "alpmestan@gmail.com";
      author = "Alp Mestanogullari, Vikram Verma";
      homepage = "http://github.com/alpmestan/taggy-lens";
      url = "";
      synopsis = "Lenses for the taggy html/xml parser";
      description = "Lenses, folds, traversals and prisms for\n<http://hackage.haskell.org/package/taggy taggy>.\n\nThis greatly simplifies your life when dealing with\nthe ugly world of Real Life HTML. Here's an\n<https://github.com/alpmestan/taggy-lens/blob/master/example/HackageNew.hs example>. It lists the date, author and package name of\nall the /recent package uploads/ entries from the hackage page of the same name.\nNote that it uses <http://hackage.haskell.org/package/wreq wreq> to /fetch/ the\nHackage page.\n\n> module Main (main) where\n>\n> import Control.Lens (to, only,(^?),ix, toListOf)\n> import Data.ByteString.Lazy (ByteString)\n> import Data.Text (Text)\n> import Data.Text.Encoding.Error (lenientDecode)\n> import Data.Text.Lazy.Encoding (decodeUtf8With)\n> import Network.HTTP.Client (Response)\n> import Network.Wreq (responseBody, get)\n> import Text.Taggy (Node)\n> import Text.Taggy.Lens (html, elements, children, contents,allNamed)\n>\n> data Upload =\n>   Upload Text -- ^ date\n>          Text -- ^ author\n>          Text -- ^ package name\n>   deriving (Show)\n>\n> table :: [Node] -> Maybe Upload\n> table row = do\n>   date    <- row ^? ix 0 . contents\n>   author  <- row ^? ix 1 . contents\n>   package <- row ^? ix 2 . elements . contents\n>   return \$ Upload date author package\n>\n> recentPackages :: Response ByteString -> [Maybe Upload]\n> recentPackages = toListOf\n>                \$ responseBody . to (decodeUtf8With lenientDecode)\n>                . html . allNamed (only \"tr\") . children . to table\n>\n> main :: IO ()\n> main = get \"https://hackage.haskell.org/packages/recent\" >>= print `fmap` recentPackages";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."taggy" or (buildDepError "taggy"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          ];
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."taggy" or (buildDepError "taggy"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            ];
          };
        "doctests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."doctest" or (buildDepError "doctest"))
            ];
          };
        };
      };
    }