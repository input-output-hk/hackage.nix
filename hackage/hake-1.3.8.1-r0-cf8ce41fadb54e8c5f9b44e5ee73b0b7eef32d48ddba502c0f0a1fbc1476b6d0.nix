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
      specVersion = "1.2";
      identifier = { name = "hake"; version = "1.3.8.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
      author = "Yoshikuni Jujo";
      homepage = "http://homepage3.nifty.com/salamander/second/projects/hake/index.xhtml";
      url = "http://code.haskell.org/hake/";
      synopsis = "make tool. ruby : rake = haskell : hake";
      description = "Like ruby's rake, hake have Hakefile which is Haskell source.\n\nAnd Hakefile is like rake's Rakefile, and make's Makefile.\n\nHakefile is just Haskell source code,\nthen you can use all Haskell features.\n\nNew:\n\n> deps :: [ String ] -> [ String] -> Rule\n> deps trgts srcs == file trgts srcs \$ \\_ _ -> []\n\nUse 'deps' if you want to define no command rule for new\nTargets.\nPlease use addDeps if you will add dependencies to already\nexisting targets.\n\nHakefile example:\n\n> import Development.Hake\n> import Development.Hake.FunSetRaw\n> hake_rules = [\n>\n>  dflt\t[ \"greeting\" ]\n>  ,\n>  file\t[ \"greeting\", \"greeting.log\" ] [ \"hello.o\", \"good-bye.o\" ] \$\n> \t\tconst2 [ [ \"linker\", \"-o\", \"greeting\", \"hello.o\", \"good-bye.o\" ] ]\n>  ,\n>  rule\t\".o\" \".sfx1\" \$\n> \t\t\\t (s:_) -> [ [ \"compiler1\", s, \"-o\", t ] ]\n>  ,\n>  rule\t\".o\" \".sfx2\" \$\n> \t\t\\t (s:_) -> [ [ \"compiler2\", s, \"-o\", t ] ]\n>  ,\n>  task\t\"clean\"\n>       [ [ \"rm\", \"-f\", \"hello.o\", \"good-by.o\", \"greeting\", \"greeting.log\" ] ]\n>  ,\n>  mkfl\t\"script.sh\" [ \"#!/bin/sh\", \"echo This is script\", \"echo made by Hakefile\" ]\n>  ,\n>  ruleSS \"\" \".o\" \$ \\t (s:_) -> [ (\".c\",  [ [ \"gcc\", s, \"-o\", t ] ] ) ,\n>                             (\".cc\", [ [ \"g++\", s, \"-o\", t ] ] ) ] )\n>  ,\n>  rule   \".o\" \".c\" \$ \\_ (s:_) -> [ [ \"gcc\", \"-c\", s ] ]\n>  ,\n>  rule   \".o\" \".cc\" \$ \\_ (s:_) -> [ [ \"g++\", \"-c\", s ] ]\n>  ,\n>  base   (==\"foo\") (const [ \"foo.gen\", \"Hakefile\" ]) \$ \\t (s:_) _ _ -> do\n>               gen <- readFile s\n>               writeFile t \$ unlines \$\n>                 [ \"#!/bin/sh\", \"echo This is script\" ] ++ lines gen\n>               return ExitSuccess\n>\n>  ]\n>\n> main = hake hake_rules";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          ];
        buildable = true;
        };
      exes = {
        "hake" = {
          depends = [
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."regexpr" or (buildDepError "regexpr"))
            (hsPkgs."yjtools" or (buildDepError "yjtools"))
            ];
          buildable = true;
          };
        };
      };
    }