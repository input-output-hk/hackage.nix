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
        name = "HListPP";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Adam Vogt <vogt.adam@gmail.com>";
      author = "Adam Vogt <vogt.adam@gmail.com>";
      homepage = "http://code.haskell.org/~aavogt/HListPP";
      url = "";
      synopsis = "A preprocessor for HList labelable labels";
      description = "A preprocessor that replaces @`longDescriptiveName@ with\n\n> hLens' (Label :: Label \"longDescriptiveName\")\n\nUse with ghc flags @-F -pgmF HListPP@, which can\nbe added per-file with a pragma:\n\n> ❴-# OPTIONS_GHC -F -pgmF HListPP #-❵ -- change braces to ascii (haddock doesn't allow literal comments in files)\n\nNote that @`labels@ is expanded to something that\ntakes up about 26 more columns. To avoid issues with\nlayout, put a newline after keywords that introduce\nlayout, at least if there are @`labels@ in the same row.\nIn other words:\n\n> `character.`position.`x %= \\ x -> let\n>      msg = \"a really long message about x>0\"\n>      pos = x - 5\n>    in if pos < 0\n>          then error msg\n>          else pos\n\nInstead of\n\n> `character.`position.`x %= \\ x -> let msg = \"a really long message about x>0\"\n>                                       pos = x - 5\n>                            in if pos < 0\n>                                then error msg\n>                                else pos\n\nA blank library is included in this package to make\nit possible to depend on HListPP";
      buildType = "Simple";
    };
    components = {
      "library" = {};
      exes = {
        "HListPP" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.applicative-quoters)
            (hsPkgs.regex-applicative)
          ];
        };
      };
    };
  }