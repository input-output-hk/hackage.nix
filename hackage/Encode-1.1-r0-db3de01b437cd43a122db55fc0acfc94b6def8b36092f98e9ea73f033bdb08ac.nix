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
      specVersion = "0";
      identifier = { name = "Encode"; version = "1.1"; };
      license = "LicenseRef-GPL";
      copyright = "2008";
      maintainer = "otakar.smrz mff.cuni.cz";
      author = "Otakar Smrz";
      homepage = "http://ufal.mff.cuni.cz/~smrz/";
      url = "http://sourceforge.net/projects/encode-arabic/";
      synopsis = "Encoding character data";
      description = "The \"Encode\" library provides a unified interface for\nconverting strings from different encodings into a common\nrepresentation, and vice versa. This representation is\nisomorphic to the Unicode character set, and the encodings\ncan be both standard and user-defined. For this purpose,\nthe \"Encode\" module defines the 'Encode.UPoint' data type\nand the 'Encode.Encoding' type class with the 'encode' and\n'decode' methods.\n\nThe \"Encode\" library is being proposed as a Haskell\nanalogy to the /Encode/ extension in Perl,\n<http://search.cpan.org/dist/Encode/>.\n\nThe \"Exec.Encode.Main\" and \"Exec.Decode.Main\" programs\nmimick the fuction calls to 'encode' and 'decode',\nrespectively, with the following usage of the executables:\n\n>    decode ArabTeX < decode.d | encode Buckwalter > encode.d\n>\n>    decode MacArabic < data.MacArabic > data.UTF8\n>\n>    encode WinArabic < data.UTF8 > data.WinArabic\n\nThe installation instructions are given in \"INSTALL\".\nFor the list of supported encoding schemes, please refer\nto \"Encode\" and the source files of the programs. With the\nexecutables, the naming of encodings is /case-insensitive/\nand some further options are allowed:\n\n>  encode|decode [--OPTIONS] [ENCODING]\n>    -h       --help         show usage information\n>    -l       --lines        use line-oriented mode\n>    -p text  --prefix=text  prefix input with text\n>    -s text  --suffix=text  suffix input with text\n>    -v       --version      show program's version\n\nThe \"PureFP\" library is an edited excerpt from the\n/Functional Parsing/ library developed by Peter\nLjungl&#246;f in his licenciate thesis /Pure Functional\nParsing &#150; an advanced tutorial/, G&#246;teborg\nUniversity and Chalmers University of Technology, April\n2002, <http://www.ling.gu.se/~peb/software.html>.\n\nThe \"Parsek\" library is included for experimental purposes\nand subsumes \"PureFP.Parsers.Stream\". /Parsek/ was developed\nby Koen Claessen in his functional pearl article /Parallel\nParsing Processes/, Journal of Functional Programming,\n14(6), 741&#150;757, Cambridge University Press, 2004,\n<http://www.cs.chalmers.se/~koen/pubs/entry-jfp04-parser.html>\n\nThe \"Version\" library is just a simple support for\nworking with the CVS\\/SVN revision keyword.\n\nThis software is published under the /GNU General Public License/.\nOnly the \"Encode\".hs and \"Version\".hs files are instead subject to\nthe /Revised BSD License/. Note the copyright and license details\nin the headers of the files, and see \"LICENSE\", \"LicenseBSD\" and\n\"LicenseGPL\" distributed with this package.\n\n\"Encode\" \"PureFP\" \"Parsek\" \"Version\"";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."Cabal" or (buildDepError "Cabal"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          ];
        };
      exes = {
        "encode" = {
          depends = [
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            ];
          };
        "decode" = {
          depends = [
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            ];
          };
        };
      };
    }