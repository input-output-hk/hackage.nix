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
      identifier = { name = "hake"; version = "0.6"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
      author = "Yoshikuni Jujo";
      homepage = "http://homepage3.nifty.com/salamander/second/projects/hake/index.xhtml";
      url = "http://homepage3.nifty.com/salamander/second/portage/distfiles/hake-0.5.tar.gz";
      synopsis = "make tool. ruby : rake = haskell : hake";
      description = "Like ruby's rake, hake have Hakefile which is Haskell source.\n\nAnd Hakefile is like rake's Rakefile, and make's Makefile.\n\nHakefile is just Haskell source code,\nthen you can use all Haskell features.\n\n> import Development.Hake\n> hake_rules = [\n>\n>  dflt\t[ \"greeting\" ]\n>  ,\n>  file\t( [ \"greeting\", \"greeting.log\" ], [ \"hello.o\", \"good-bye.o\" ] ,\n> \t\t[ \"linker -o greeting hello.o good-bye.o\" ] )\n>  ,\n>  rule\t( \".o\", \".sfx1\",\n> \t\t\\t s -> [ \"compiler1 \" ++ s ++ \" -o \" ++ t ] )\n>  ,\n>  rule\t( \".o\", \".sfx2\",\n> \t\t\\t s -> [ \"compiler2 \" ++ s ++ \" -o \" ++ t ] )\n>  ,\n>  task\t( \"clean\" , [ \"rm -f *.o greeting greeting.log\" ] )\n>  ,\n>  mkfl\t( \"script.sh\", [ \"#!/bin/sh\", \"echo This is script\", \"echo made by Hakefile\" ] )\n>  ,\n>  ruleSS ( \"\", \".o\", \\t s -> [ (\".c\",  [ \"gcc \" ++ s ++ \" -o \" ++ t ] ) ,\n>                               (\".cc\", [ \"g++ \" ++ s ++ \" -o \" ++ t ] ) ] )\n>  ,\n>  rule   ( \".o\", \".c\",  \\_ s -> [ \"gcc -c \" ++ s ] )\n>  ,\n>  rule   ( \".o\", \".cc\", \\_ s -> [ \"g++ -c \" ++ s ] )\n>  ,\n>  base   ( [ (==\"foo\") ], const [ \"foo.gen\", \"Hakefile\" ], \\t [s] -> [ \\_ -> do\n>               gen <- readFile s\n>               writeFile t $ unlines $\n>                 [ \"#!/bin/sh\", \"echo This is script\" ] ++ lines gen\n>               return ExitSuccess ] )\n>\n>  ]\n>\n> main = hake hake_rules";
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