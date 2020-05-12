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
      specVersion = "1.8";
      identifier = { name = "cake3"; version = "0.6.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "grrwlf@gmail.com";
      author = "Sergey Mironov";
      homepage = "https://github.com/grwlf/cake3";
      url = "";
      synopsis = "Third cake the Makefile EDSL";
      description = "Cake3 is a EDSL for building Makefiles, written in Haskell. With cake3,\ndeveloper can write their build logic in Haskell, obtain clean and safe Makefile\nand distribute it among the non-Haskell-aware users. Currenly, GNU Make is\nthe only backend supported.\n\n/Example program/\n\n> module Cakefile where\n>\n> import Development.Cake3\n> import Cakefile_P\n>\n> cs = map file [\"main.c\", \"second.c\"]\n>\n> main = writeMake (file \"Makefile\") \$ do\n>   selfUpdate\n>   d <- rule \$ do\n>     shell [cmd|gcc -M \$cs -MF @(file \"depend.mk\")|]\n>   os <- forM cs \$ \\c -> do\n>     rule \$ do\n>       shell [cmd| gcc -c \$(extvar \"CFLAGS\") -o @(c.=\"o\") \$c |]\n>   elf <- rule \$ do\n>     shell [cmd| gcc -o @(file \"main.elf\") \$os |]\n>   rule \$ do\n>     phony \"all\"\n>     depend elf\n>   includeMakefile d\n\n/Basic workflow/\n\n* Install the cake3\n\n* Create Cakefile.hs in the project root\n\n* Build the application using cake3 script provided\n\n* Execute the application to obtain the Makefile\n\nSee the README on the GitHub <https://github.com/grwlf/cake3> for more\ninformation. Distribution contains several example projects.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell-src-meta" or (errorHandler.buildDepError "haskell-src-meta"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."monadloc" or (errorHandler.buildDepError "monadloc"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
          (hsPkgs."text-format" or (errorHandler.buildDepError "text-format"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."mime-types" or (errorHandler.buildDepError "mime-types"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          ];
        buildable = true;
        };
      exes = {
        "cake3" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            ];
          buildable = true;
          };
        "cake3-scan" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."cake3" or (errorHandler.buildDepError "cake3"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ];
          buildable = true;
          };
        "urembed" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."haskell-src-meta" or (errorHandler.buildDepError "haskell-src-meta"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."monadloc" or (errorHandler.buildDepError "monadloc"))
            (hsPkgs."mime-types" or (errorHandler.buildDepError "mime-types"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            ];
          buildable = true;
          };
        };
      };
    }