{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "Encode"; version = "1.3.6"; };
      license = "LicenseRef-GPL";
      copyright = "2013";
      maintainer = "otakar-smrz users.sf.net";
      author = "Otakar Smrz";
      homepage = "http://otakar-smrz.users.sf.net/";
      url = "http://sourceforge.net/projects/encode-arabic/";
      synopsis = "Encoding character data";
      description = "The \"Encode\" library provides a unified interface for converting strings\nfrom different encodings into a common representation, and vice versa.\nThis representation is isomorphic to the Unicode character set, and the\nencodings can be both standard and user-defined. For this purpose, the\n\"Encode\" module defines the 'Encode.UPoint' data type and the\n'Encode.Encoding' type class with the 'encode' and 'decode' methods.\n\nThe \"Encode\" library is being proposed as a Haskell analogy to the\n/Encode/ extension in Perl, <http://search.cpan.org/dist/Encode/>.\n\nThe \"Main.Encode\" and \"Main.Decode\" programs mimick the function calls\nto 'encode' and 'decode', respectively, with the following usage:\n\n>    decode ArabTeX < decode.d | encode Buckwalter > encode.d\n>\n>    decode MacArabic < data.MacArabic > data.UTF8\n>\n>    encode WinArabic < data.UTF8 > data.WinArabic\n\nThe installation instructions are given in \"INSTALL\".\nFor the list of supported encoding schemes, please refer\nto \"Encode\" and the source files of the programs. With the\nexecutables, the naming of encodings is /case-insensitive/\nand some further options are allowed:\n\n>  encode|decode [--OPTIONS] [ENCODING]\n>    -h       --help         show usage information\n>    -l       --lines        use line-oriented mode\n>    -p text  --prefix=text  prefix input with text\n>    -s text  --suffix=text  suffix input with text\n>    -v       --version      show program's version\n\nThe \"PureFP\" library is an edited excerpt from the /Functional Parsing/\nlibrary developed by Peter Ljungl&#246;f in his licenciate thesis\n/Pure Functional Parsing &#150; an advanced tutorial/, G&#246;teborg\nUniversity and Chalmers University of Technology, April 2002,\n<http://code.google.com/p/haskell-functional-parsing/>.\n\nThe \"Parsek\" library is included for experimental purposes and subsumes\n\"PureFP.Parsers.Stream\". /Parsek/ was developed by Koen Claessen in his\nfunctional pearl article /Parallel Parsing Processes/, Journal of\nFunctional Programming, 14(6), 741&#150;757, Cambridge University Press,\n2004, <http://www.cse.chalmers.se/edu/course/afp/Papers/parser-claessen.pdf>,\n<http://hackage.haskell.org/package/parsek/>.\n\n\"Encode\" \"PureFP\" \"Parsek\"";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.Cabal)
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          ];
        };
      exes = {
        "encode" = {
          depends = [
            (hsPkgs.Cabal)
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.containers)
            ];
          };
        "decode" = {
          depends = [
            (hsPkgs.Cabal)
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.containers)
            ];
          };
        };
      };
    }