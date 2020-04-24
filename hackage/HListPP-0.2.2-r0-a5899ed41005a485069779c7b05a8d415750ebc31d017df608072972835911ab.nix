{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."regex-applicative" or ((hsPkgs.pkgs-errors).buildDepError "regex-applicative"))
            ];
          buildable = true;
          };
        };
      };
    }