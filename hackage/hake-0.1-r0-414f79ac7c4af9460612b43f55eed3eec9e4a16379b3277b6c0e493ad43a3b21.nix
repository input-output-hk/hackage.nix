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
      specVersion = "1.2";
      identifier = {
        name = "hake";
        version = "0.1";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
      author = "Yoshikuni Jujo";
      homepage = "http://homepage3.nifty.com/salamander/second/projects/hake/index.xhtml";
      url = "http://homepage3.nifty.com/salamander/second/portage/distfiles/hake-0.0.tar.gz";
      synopsis = "ruby : rake = haskell : hake";
      description = "Like ruby's rake, hake have Hakefile which is Haskell source.\n\nAnd Hakefile is like rake's Rakefile, and make's Makefile.\n\nHakefile is just Haskell source code,\nthen you can use all Haskell features.\n\n> import Development.Hake\n> hake_tree = [\n>\n>  dflt\t[ \"greeting\" ]\n>  ,\n>  file\t( [ \"greeting\", \"greeting.log\" ], [ \"hello.o\", \"good-bye.o\" ] ,\n> \t\t[ \"linker -o greeting hello.o good-bye.o\" ] )\n>  ,\n>  rule\t( \".o\", \".sfx1\",\n> \t\t\\t s -> [ \"compiler1 \" ++ s ++ \" -o \" ++ t ] )\n>  ,\n>  rule\t( \".o\", \".sfx2\",\n> \t\t\\t s -> [ \"compiler2 \" ++ s ++ \" -o \" ++ t ] )\n>  ,\n>  task\t( \"clean\" , [ \"rm -f *.o greeting greeting.log\" ] )\n>\n>  ]\n>\n> main = hake hake_tree";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.old-time)
          (hsPkgs.mtl)
        ];
      };
      exes = {
        "hake" = {
          depends  = [
            (hsPkgs.directory)
            (hsPkgs.process)
            (hsPkgs.yjtools)
          ];
        };
      };
    };
  }