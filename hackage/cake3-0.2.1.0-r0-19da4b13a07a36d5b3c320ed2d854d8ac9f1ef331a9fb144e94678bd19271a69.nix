{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "cake3"; version = "0.2.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "grrwlf@gmail.com";
      author = "Sergey Mironov";
      homepage = "https://github.com/grwlf/cake3";
      url = "";
      synopsis = "Third cake the Makefile EDSL";
      description = "Cake3 is a EDSL for building Makefiles, written in Haskell. With cake3,\ndeveloper can write their build logic in Haskell, obtain clean and safe Makefile\nand distribute it among the non-Haskell-aware users. Currenly, GNU Make is\nthe only backend supported.\n\n/Example program/\n\n> module Cakefile where\n>\n> import Development.Cake3\n> import Cakefile_P\n>\n> cs = map file [\"main.c\", \"second.c\"]\n>\n> main = writeMake (file \"Makefile\") \$ do\n>   selfUpdate\n>   d <- rule \$ do\n>     shell [cmd|gcc -M \$cs -MF @(file \"depend.mk\")|]\n>   os <- forM cs \$ \\c -> do\n>     rule \$ do\n>       shell [cmd| gcc -c \$(extvar \"CFLAGS\") -o @(c.=\"o\") \$c |]\n>   elf <- rule \$ do\n>     shell [cmd| gcc -o @(file \"main.elf\") \$os |]\n>   rule \$ do\n>     phony \"clean\"\n>     unsafeShell [cmd|rm \$elf \$os \$d|]\n>   rule \$ do\n>     phony \"all\"\n>     depend elf\n>   includeMakefile d\n\n/Basic workflow/\n\n* Install the cake3\n\n* Create Cakefile.hs in the project root\n\n* Build the application using cake3 script provided\n\n* Execute the application to obtain the Makefile\n\nSee the README on the GitHub <https://github.com/grwlf/cake3> for more information.\n\n/Changes/\n\n* 0.1 - Initial release\n\n* 0.2 - Redesign (simplify) monadic interface, add support for prebuild/postbuild actions.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."haskell-src-meta" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src-meta"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."monadloc" or ((hsPkgs.pkgs-errors).buildDepError "monadloc"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."system-filepath" or ((hsPkgs.pkgs-errors).buildDepError "system-filepath"))
          (hsPkgs."text-format" or ((hsPkgs.pkgs-errors).buildDepError "text-format"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          (hsPkgs."mime-types" or ((hsPkgs.pkgs-errors).buildDepError "mime-types"))
          (hsPkgs."language-javascript" or ((hsPkgs.pkgs-errors).buildDepError "language-javascript"))
          (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
          ];
        buildable = true;
        };
      exes = {
        "cake3" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            ];
          buildable = true;
          };
        "urembed" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."language-javascript" or ((hsPkgs.pkgs-errors).buildDepError "language-javascript"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."language-javascript" or ((hsPkgs.pkgs-errors).buildDepError "language-javascript"))
            (hsPkgs."haskell-src-meta" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src-meta"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
            (hsPkgs."monadloc" or ((hsPkgs.pkgs-errors).buildDepError "monadloc"))
            (hsPkgs."mime-types" or ((hsPkgs.pkgs-errors).buildDepError "mime-types"))
            ];
          buildable = true;
          };
        };
      };
    }