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
      specVersion = "1.8";
      identifier = { name = "cake3"; version = "0.5.1.0"; };
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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."haskell-src-meta" or (buildDepError "haskell-src-meta"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."monadloc" or (buildDepError "monadloc"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."system-filepath" or (buildDepError "system-filepath"))
          (hsPkgs."text-format" or (buildDepError "text-format"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."mime-types" or (buildDepError "mime-types"))
          (hsPkgs."language-javascript" or (buildDepError "language-javascript"))
          (hsPkgs."syb" or (buildDepError "syb"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          ];
        };
      exes = {
        "cake3" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."process" or (buildDepError "process"))
            ];
          };
        "urembed" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."language-javascript" or (buildDepError "language-javascript"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."syb" or (buildDepError "syb"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."language-javascript" or (buildDepError "language-javascript"))
            (hsPkgs."haskell-src-meta" or (buildDepError "haskell-src-meta"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."monadloc" or (buildDepError "monadloc"))
            (hsPkgs."mime-types" or (buildDepError "mime-types"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            ];
          };
        };
      };
    }