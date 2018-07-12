{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "numerals";
          version = "0.4";
        };
        license = "BSD-3-Clause";
        copyright = "2009–2014 Roel van Dijk, Bas van Dijk";
        maintainer = "Roel van Dijk <vandijk.roel@gmail.com>";
        author = "Roel van Dijk <vandijk.roel@gmail.com>, Bas van Dijk <v.dijk.bas@gmail.com>";
        homepage = "https://github.com/roelvandijk/numerals";
        url = "";
        synopsis = "Convert numbers to number words";
        description = "Convert numbers to number words in a number of languages. Each\nlanguage has its own module. The module name is based on one of the\nISO 639 Alpha codes. Each module contains one or more 'cardinal' and\n'ordinal' functions and a 'struct' function. The 'cardinal'\nfunctions directly convert cardinal numbers to a string-like\nrepresentation of their spoken form. The 'ordinal' functions do the\nsame but for ordinal numbers. The 'struct' functions convert numbers\nto a polymorphic representation of their grammatical structure.\n\nThe use of this package is best understood with some examples. First\nsome English number names, both British and US variants:\n\n>>> import qualified Text.Numeral.Language.EN as EN\n>>> EN.uk_cardinal defaultInflection 123 :: Maybe Text\nJust \"one hundred and twenty-three\"\n>>> EN.us_cardinal defaultInflection (10^50 + 42) :: Maybe Text\nJust \"one hundred quindecillion forty-two\"\n\nFrench, which contains some traces of a base 20 system:\n\n>>> import qualified Text.Numeral.Language.FR as FR\n>>> FR.cardinal defaultInflection (-99) :: Maybe Text\nJust \"moins quatre-vingt-dix-neuf\"\n\nConversions can fail. Alamblak, a language spoken by a few people in\nPapua New Guinea, has no representation for negative numbers:\n\n>>> import qualified Text.Numeral.Language.AMP as AMP\n>>> AMP.cardinal defaultInflection (-3) :: Maybe Text\nNothing\n\nSome languages have multiple scripts and methods for writing number\nnames. Take Chinese for example, which can be written using Han\ncharacters or transcribed to the Latin script using Pinyin.\n\nTraditional Chinese characters:\n\n>>> import qualified Text.Numeral.Language.ZH as ZH\n>>> ZH.trad_cardinal defaultInflection 123456 :: Maybe Text\nJust \"十二萬三千四百五十六\"\n\nSimplified characters for use in financial contexts:\n\n>>> ZH.finance_simpl_cardinal defaultInflection 123456 :: Maybe Text\nJust \"拾贰万参仟肆伯伍拾陆\"\n\nTranscribed using Pinyin:\n\n>>> ZH.pinyin_cardinal defaultInflection 123456 :: Maybe Text\nJust \"shíèrwàn sānqiān sìbǎi wǔshí liù\"\n\nUsing the 'struct' functions you can see the grammatical structure\nof number names. Because the results of these functions are\npolymorphic you need to specify a specific type.\n\n>>> import qualified Text.Numeral.Language.NL as NL\n>>> NL.struct 123 :: Integer\n123\n>>> import Text.Numeral\n>>> NL.struct 123 :: Exp\nAdd (Lit 100) (Add (Lit 3) (Mul (Lit 2) (Lit 10)))\n\nCompare with:\n\n>>> NL.cardinal defaultInflection 123 :: Maybe Text\nJust \"honderddrieëntwintig\"\n\n100 (honderd) + (3 (drie) + (ën) 2 (twin) * 10 (tig))";
        buildType = "Simple";
      };
      components = {
        "numerals" = {
          depends  = [
            hsPkgs.base
            hsPkgs.base-unicode-symbols
            hsPkgs.containers
            hsPkgs.containers-unicode-symbols
            hsPkgs.fingertree
            hsPkgs.text
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "7.2.1") hsPkgs.integer-gmp;
        };
        tests = {
          "test-numerals" = {
            depends  = [
              hsPkgs.base
              hsPkgs.base-unicode-symbols
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
              hsPkgs.text
              hsPkgs.numerals
            ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "7.2.1") hsPkgs.integer-gmp;
          };
        };
      };
    }