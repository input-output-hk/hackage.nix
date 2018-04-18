{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "shade";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright: (c) 2017 Frederik Hanghøj Iversen";
        maintainer = "fhi.1990@gmail.com";
        author = "Frederik Hanghøj Iversen";
        homepage = "https://github.com/fredefox/shade#readme";
        url = "";
        synopsis = "A control structure used to combine heterogenous types with delayed effects.";
        description = "> {-# LANGUAGE MultiParamTypeClasses #-}\n> module Main ( main ) where\n>\n> import Data.Functor.Identity\n> import Control.Monad\n>\n> import Control.Monad.Shade\nA shade can be used to save heterogeneous types in containers with the same\ntype e.g. using a type-class as a common denominator:\n> showshade :: Applicative m => Show a => a -> Shade m String\n> showshade a = pure (show a)\n>\n> hetero :: Shade Identity String\n> hetero = mconcat [ showshade () , showshade 2 , showshade \"hej\" ]\nThe values inside a shade are stored in a context. We can swap this context\nby defining a transfer function:\n> idToIO :: Identity b -> IO b\n> idToIO (Identity v) = putStrLn \"Transferring\" *> pure v\nThe context is switched using `transfer` and we can access the value in this\nnew context by using `shadow`:\n> runInIO :: Shade Identity a -> IO a\n> runInIO = shadow . transfer idToIO\nThe point to note about this example is that the values are stored in an\nshades with the identity as context. We can manipulate this context\nincluding the value. We cannot, however inspect the value since it is\nuniversally quantified.";
        buildType = "Simple";
      };
      components = {
        shade = {
          depends  = [ hsPkgs.base ];
        };
        exes = {
          shade = {
            depends  = [
              hsPkgs.base
              hsPkgs.shade
            ];
          };
        };
      };
    }