{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "conf"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2015 Cary M. Robbins";
      maintainer = "carymrobbins@gmail.com";
      author = "Cary M. Robbins";
      homepage = "";
      url = "";
      synopsis = "Parser for Haskell-based configuration files.";
      description = "This package is designed to allow you to create configuration files\nwith declarative Haskell and parse the values back into Haskell code.\nThe benefit here is to have a configuration file in Haskell that does\nnot have to be recompiled - it is interpreted/parsed at runtime in a\ntype-safe manner.\n\nExample usage:\n\n> -- /path/to/my-config.hs\n> foo = [\"bar\", \"baz\"]\n> spam = Eggs\n\n> -- Application source\n> import Data.Conf\n> import Data.Maybe\n>\n> data Spam = Eggs | Parrot | SomethingEntirelyDifferent\n>     deriving (Show, Read)\n>\n> getSpam :: Conf -> Spam\n> getSpam = fromMaybe SomethingEntirelyDifferent . getConf \"spam\"\n>\n> getFoo :: Conf -> Maybe Int\n> getFoo = getConf \"foo\"\n>\n> main = do\n>     conf <- readConf \"my-config.hs\"\n>     print \$ getSpam conf -- Output: Eggs\n>     print \$ getFoo conf  -- Output: Nothing";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.haskell-src) ]; };
      tests = {
        "unit-test" = {
          depends = [
            (hsPkgs.conf)
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-th)
            ];
          };
        };
      };
    }