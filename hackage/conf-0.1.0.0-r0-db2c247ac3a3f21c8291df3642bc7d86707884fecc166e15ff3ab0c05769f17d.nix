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
      identifier = { name = "conf"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2014 Cary M. Robbins";
      maintainer = "carymrobbins@gmail.com";
      author = "Cary M. Robbins";
      homepage = "";
      url = "";
      synopsis = "Parser for Haskell-based configuration files.";
      description = "This package is designed to allow you to create configuration files\nwith declarative Haskell and parse the values back into Haskell code.\nThe benefit here is to have a configuration file in Haskell that does\nnot have to be recompiled - it is interpreted/parsed at runtime in a\ntype-safe manner.\n\nExample usage:\n\n> -- /path/to/my-config.hs\n> foo = [\"bar\", \"baz\"]\n> spam = Eggs\n>\n> -- Application source\n> import Data.Conf\n> import Data.Maybe\n>\n> data Spam = Eggs | Parrot | SomethingEntirelyDifferent\n>     deriving (Show, Read)\n>\n> getSpam :: Conf -> Spam\n> getSpam = fromMaybe SomethingEntirelyDifferent . getConf \"spam\"\n>\n> getFoo :: Conf -> Maybe Foo\n> getFoo = getConf \"foo\"\n>\n> main = do\n>     conf <- readConf \"my-config.hs\"\n>     let spam = getSpam conf\n>     print spam\n>     let foo = getFoo conf\n>     print foo";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."haskell-src" or (buildDepError "haskell-src"))
          ];
        };
      };
    }