{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "taggy-lens";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2014 Alp Mestanogullari, Vikram Verma";
      maintainer = "alpmestan@gmail.com";
      author = "Alp Mestanogullari, Vikram Verma";
      homepage = "http://github.com/alpmestan/taggy-lens";
      url = "";
      synopsis = "Lenses for the taggy html/xml parser";
      description = "Lenses, folds, traversals and prisms for\n<http://hackage.haskell.org/package/taggy taggy>.\n\nThis greatly simplifies your life when dealing with\nthe ugly world of Real Life HTML. Here's an example\n<https://github.com/alpmestan/taggy-lens/blob/master/example/HackageNew.hs\nfrom the github repository>: it lists the date, author and package name of\nall the /recent package uploads/ entries from the hackage page of the same name.\nNote that it uses <http://hackage.haskell.org/package/wreq wreq> to /fetch/ the\nHackage page.\n\n> module Main (main) where\n>\n> import Control.Lens (to, only,(^?),ix, toListOf)\n> import Data.ByteString.Lazy (ByteString)\n> import Data.Text (Text)\n> import Data.Text.Encoding.Error (lenientDecode)\n> import Data.Text.Lazy.Encoding (decodeUtf8With)\n> import Network.HTTP.Client (Response)\n> import Network.Wreq (responseBody, get)\n> import Text.Taggy (Node)\n> import Text.Taggy.Lens (html, elements, children, contents,allNamed)\n>\n> data Upload =\n>   Upload Text -- ^ date\n>          Text -- ^ author\n>          Text -- ^ package name\n>   deriving (Show)\n>\n> table :: [Node] -> Maybe Upload\n> table row = do\n>   date    <- row ^? ix 0 . contents\n>   author  <- row ^? ix 1 . contents\n>   package <- row ^? ix 2 . elements . contents\n>   return \$ Upload date author package\n>\n> recentPackages :: Response ByteString -> [Maybe Upload]\n> recentPackages = toListOf\n>                \$ responseBody . to (decodeUtf8With lenientDecode)\n>                . html . allNamed (only \"tr\") . children . to table\n>\n> main :: IO ()\n> main = get \"https://hackage.haskell.org/packages/recent\" >>= print `fmap` recentPackages";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.lens)
          (hsPkgs.taggy)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.taggy)
            (hsPkgs.text)
            (hsPkgs.lens)
            (hsPkgs.unordered-containers)
            (hsPkgs.hspec)
          ];
        };
        "doctests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
          ];
        };
      };
    };
  }