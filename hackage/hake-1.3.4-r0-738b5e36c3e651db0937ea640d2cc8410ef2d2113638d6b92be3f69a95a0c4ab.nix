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
      specVersion = "1.2";
      identifier = { name = "hake"; version = "1.3.4"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
      author = "Yoshikuni Jujo";
      homepage = "http://homepage3.nifty.com/salamander/second/projects/hake/index.xhtml";
      url = "http://code.haskell.org/hake/";
      synopsis = "make tool. ruby : rake = haskell : hake";
      description = "Like ruby's rake, hake have Hakefile which is Haskell source.\n\nAnd Hakefile is like rake's Rakefile, and make's Makefile.\n\nHakefile is just Haskell source code,\nthen you can use all Haskell features.\n\nNew:\n\n> deps :: [ String ] -> [ String] -> Rule\n> deps trgts srcs == file trgts srcs $ \\_ _ -> []\n\nUse 'deps' if you want to define no command rule for new\nTargets.\nPlease use addDeps if you will add dependencies to already\nexisting targets.\n\nHakefile example:\n\n> import Development.Hake\n> import Development.Hake.FunSetRaw\n> hake_rules = [\n>\n>  dflt\t[ \"greeting\" ]\n>  ,\n>  file\t[ \"greeting\", \"greeting.log\" ] [ \"hello.o\", \"good-bye.o\" ] $\n> \t\tconst2 [ [ \"linker\", \"-o\", \"greeting\", \"hello.o\", \"good-bye.o\" ] ]\n>  ,\n>  rule\t\".o\" \".sfx1\" $\n> \t\t\\t (s:_) -> [ [ \"compiler1\", s, \"-o\", t ] ]\n>  ,\n>  rule\t\".o\" \".sfx2\" $\n> \t\t\\t (s:_) -> [ [ \"compiler2\", s, \"-o\", t ] ]\n>  ,\n>  task\t\"clean\"\n>       [ [ \"rm\", \"-f\", \"hello.o\", \"good-by.o\", \"greeting\", \"greeting.log\" ] ]\n>  ,\n>  mkfl\t\"script.sh\" [ \"#!/bin/sh\", \"echo This is script\", \"echo made by Hakefile\" ]\n>  ,\n>  ruleSS \"\" \".o\" $ \\t (s:_) -> [ (\".c\",  [ [ \"gcc\", s, \"-o\", t ] ] ) ,\n>                             (\".cc\", [ [ \"g++\", s, \"-o\", t ] ] ) ] )\n>  ,\n>  rule   \".o\" \".c\" $ \\_ (s:_) -> [ [ \"gcc\", \"-c\", s ] ]\n>  ,\n>  rule   \".o\" \".cc\" $ \\_ (s:_) -> [ [ \"g++\", \"-c\", s ] ]\n>  ,\n>  base   (==\"foo\") (const [ \"foo.gen\", \"Hakefile\" ]) $ \\t (s:_) _ _ -> do\n>               gen <- readFile s\n>               writeFile t $ unlines $\n>                 [ \"#!/bin/sh\", \"echo This is script\" ] ++ lines gen\n>               return ExitSuccess\n>\n>  ]\n>\n> main = hake hake_rules";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
        ];
        buildable = true;
      };
      exes = {
        "hake" = {
          depends = [
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."yjtools" or (errorHandler.buildDepError "yjtools"))
            (hsPkgs."regexpr" or (errorHandler.buildDepError "regexpr"))
          ];
          buildable = true;
        };
      };
    };
  }