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
      identifier = { name = "shade"; version = "0.1.0.0"; };
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
      "library" = {
        depends = [ (hsPkgs."base" or (buildDepError "base")) ];
        buildable = true;
        };
      exes = {
        "shade" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."shade" or (buildDepError "shade"))
            ];
          buildable = true;
          };
        };
      };
    }