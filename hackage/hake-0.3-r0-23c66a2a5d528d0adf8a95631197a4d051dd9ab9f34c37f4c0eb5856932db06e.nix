{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "hake"; version = "0.3"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
      author = "Yoshikuni Jujo";
      homepage = "http://homepage3.nifty.com/salamander/second/projects/hake/index.xhtml";
      url = "http://homepage3.nifty.com/salamander/second/portage/distfiles/hake-0.2.tar.gz";
      synopsis = "ruby : rake = haskell : hake";
      description = "Like ruby's rake, hake have Hakefile which is Haskell source.\n\nAnd Hakefile is like rake's Rakefile, and make's Makefile.\n\nHakefile is just Haskell source code,\nthen you can use all Haskell features.\n\n> import Development.Hake\n> hake_rules = [\n>\n>  dflt\t[ \"greeting\" ]\n>  ,\n>  file\t( [ \"greeting\", \"greeting.log\" ], [ \"hello.o\", \"good-bye.o\" ] ,\n> \t\t[ \"linker -o greeting hello.o good-bye.o\" ] )\n>  ,\n>  rule\t( \".o\", \".sfx1\",\n> \t\t\\t s -> [ \"compiler1 \" ++ s ++ \" -o \" ++ t ] )\n>  ,\n>  rule\t( \".o\", \".sfx2\",\n> \t\t\\t s -> [ \"compiler2 \" ++ s ++ \" -o \" ++ t ] )\n>  ,\n>  task\t( \"clean\" , [ \"rm -f *.o greeting greeting.log\" ] )\n>  ,\n>  mkfl\t( \"script.sh\", [ \"#!/bin/sh\", \"echo This is script\", \"echo made by Hakefile\" ] )\n>  ,\n>  mkfl2  ( \"script.sh\", [ \"script.sh.gen\" ], \\[s] ->\n>             do gen <- readFile s\n>                return \$ [ \"#!/bin/sh\", \"echo This is script\", \"echo made by Hakefile\" ]\n>                         ++ gen )\n>  ,\n>  ruleSS ( \"\", \".o\", \\t s -> [ (\".c\",  [ \"gcc \" ++ s ++ \" -o \" ++ t ] ) ,\n>                               (\".cc\", [ \"g++ \" ++ s ++ \" -o \" ++ t ] ) ] )\n>  ,\n>  rule   ( \".o\", \".c\",  \\_ s -> [ \"gcc -c \" ++ s ] )\n>  ,\n>  rule   ( \".o\", \".cc\", \\_ s -> [ \"g++ -c \" ++ s ] )\n>  ,\n>  ( [ (==\"foo\") ], const [ \"foo.gen\", \"Hakefile\" ], \\t [s] -> [ do\n>         gen <- readFile s\n>         writeFile t \$ unlines \$ [ \"#!/bin/sh\", \"echo This is script\" ] ++ lines gen ] )\n>\n>  ]\n>\n> main = hake hake_tree";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          ];
        buildable = true;
        };
      exes = {
        "hake" = {
          depends = [
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."yjtools" or ((hsPkgs.pkgs-errors).buildDepError "yjtools"))
            ];
          buildable = true;
          };
        };
      };
    }