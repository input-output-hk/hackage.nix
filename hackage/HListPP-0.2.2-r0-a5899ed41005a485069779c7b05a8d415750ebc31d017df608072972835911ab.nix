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
      identifier = { name = "HListPP"; version = "0.2.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Adam Vogt <vogt.adam@gmail.com>";
      author = "Adam Vogt <vogt.adam@gmail.com>";
      homepage = "http://github.com/aavogt/HListPP";
      url = "";
      synopsis = "A preprocessor for HList labelable labels";
      description = "A preprocessor that replaces @`longDescriptiveName@ with\n\n> hLens' (Label :: Label \"longDescriptiveName\")\n\nUse with ghc flags @-F -pgmF HListPP@. A file using HListPP\ncould start with something like\n\n> ❴-# OPTIONS_GHC -F -pgmF HListPP #-❵ -- change braces to ascii (haddock doesn't allow literal comments in files)\n> ❴-# LANGUAGE DataKinds #-❵\n> import Data.HList.CommonMain\n> import Control.Lens\n\nThen the labels can then be used in expressions with types\nlike:\n\n> `x :: Lens (Record S) (Record T) a b\n> `x :: Prism (Variant S) (Variant T) a b\n> `a .==. \"x\" .*.\n>    `b .==. \"y\" .*. emptyRecord :: Record [ Tagged \"a\" String, Tagged \"b\" String ]\n\nwhere @S@ is a type-level list containing a @Tagged \"x\" a@\nand @T@ is a type-level list containing a @Tagged \"x\" b@.\n\nNote that @`labels@ is expanded to something that\ntakes up about 26 more columns. To avoid issues with\nlayout, put a newline after keywords that introduce\nlayout, at least if there are @`labels@ in the same row.\nIn other words:\n\n> `character.`position.`x %= \\ x -> let\n>      msg = \"a really long message about x>0\"\n>      pos = x - 5\n>    in if pos < 0\n>          then error msg\n>          else pos\n\nInstead of\n\n> `character.`position.`x %= \\ x -> let msg = \"a really long message about x>0\"\n>                                       pos = x - 5\n>                            in if pos < 0\n>                                then error msg\n>                                else pos";
      buildType = "Simple";
      };
    components = {
      exes = {
        "HListPP" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."regex-applicative" or (buildDepError "regex-applicative"))
            ];
          buildable = true;
          };
        };
      };
    }