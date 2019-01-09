{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "Encode"; version = "0.7"; };
      license = "LicenseRef-GPL";
      copyright = "2007";
      maintainer = "otakar.smrz mff.cuni.cz";
      author = "Otakar Smrz";
      homepage = "http://ufal.mff.cuni.cz/~smrz/";
      url = "http://ufal.mff.cuni.cz/~smrz/Encode/Encode-0.7.tar.gz";
      synopsis = "Encoding character data";
      description = "The \"Encode\" library is being proposed as a Haskell\nanalogy to the /Encode/ extension in Perl,\n<http://search.cpan.org/dist/Encode/>.\n\nLike its counterpart, \"Encode\" should provide a unified\ninterface for converting strings from different encodings\ninto a common representation, and vice versa. The\nrepresentation should be isomorphic to the Unicode\ncharacter set, and the encodings might be both standard\nand user-defined. For this purpose, the \"Encode\" module\ndefines the 'Encode.UPoint' type and the\n'Encode.Encoding' type class.\n\nThe \"FunParsing\" library is an edited excerpt from the\n/Functional Parsing/ library developed by Peter\nLjungl&#246;f in his licenciate thesis /Pure Functional\nParsing &#150; an advanced tutorial/, G&#246;teborg\nUniversity and Chalmers University of Technology, April\n2002, <http://www.cs.chalmers.se/~peb/software.html>.\n\nThe \"Version\" library is just a simple support for\nworking with the CVS\\/SVN revision keyword.\n\nThis software is published under the /GNU General Public\nLicense/. Only the \"Encode\".hs and \"Version\".hs files are\ninstead subject to the /Revised BSD License/. Note the\ncopyright and license details in the headers of the\nfiles, and see \"LICENSE\", \"LicenseBSD\" and \"LicenseGPL\"\ndistributed with this package.\n\n\"Encode\" \"FunParsing\" \"Version\"";
      buildType = "Custom";
      };
    components = {
      "library" = { depends = [ (hsPkgs.Cabal) (hsPkgs.base) ]; };
      };
    }