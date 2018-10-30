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
      specVersion = "1.8";
      identifier = {
        name = "cake3";
        version = "0.5.1.0";
      };
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
        depends  = [
          (hsPkgs.base)
          (hsPkgs.haskell-src-meta)
          (hsPkgs.template-haskell)
          (hsPkgs.filepath)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.monadloc)
          (hsPkgs.mtl)
          (hsPkgs.bytestring)
          (hsPkgs.deepseq)
          (hsPkgs.system-filepath)
          (hsPkgs.text-format)
          (hsPkgs.directory)
          (hsPkgs.attoparsec)
          (hsPkgs.mime-types)
          (hsPkgs.language-javascript)
          (hsPkgs.syb)
          (hsPkgs.parsec)
        ];
      };
      exes = {
        "cake3" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.process)
          ];
        };
        "urembed" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.language-javascript)
            (hsPkgs.process)
            (hsPkgs.filepath)
            (hsPkgs.syb)
            (hsPkgs.optparse-applicative)
            (hsPkgs.directory)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.language-javascript)
            (hsPkgs.haskell-src-meta)
            (hsPkgs.template-haskell)
            (hsPkgs.attoparsec)
            (hsPkgs.monadloc)
            (hsPkgs.mime-types)
            (hsPkgs.parsec)
          ];
        };
      };
    };
  }