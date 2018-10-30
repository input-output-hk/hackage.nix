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
        name = "numerals";
        version = "0.3.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2009–2011 Roel van Dijk, Bas van Dijk";
      maintainer = "Roel van Dijk <vandijk.roel@gmail.com>";
      author = "Roel van Dijk <vandijk.roel@gmail.com>, Bas van Dijk <v.dijk.bas@gmail.com>";
      homepage = "https://github.com/roelvandijk/numerals";
      url = "";
      synopsis = "Convert numbers to number words";
      description = "Convert numbers to number words in a number of languages. Each\nlanguage has its own module. The module name is based on one of the\nISO 639 Alpha codes. Each module contains one or more 'cardinal'\nfunctions and a 'struct' function. The 'cardinal' functions directly\nconvert cardinal numbers to a string-like representation of their\nspoken form. The 'struct' functions convert numbers to a polymorphic\nrepresentation of their grammatical structure. All language modules\nare implemented using the @numerals-base@ package.\n\nThe use of this package is best understood with some\nexamples. Because the results of conversion are polymorphic we need\nto choose a specific type. For these examples we'll use simple\nstrings. But any type that has instances for 'Monoid' and 'IsString'\nwill work. First some English number names, both British and US\nvariants:\n\n>>> import qualified Text.Numeral.Language.EN as EN\n>>> EN.uk_cardinal 123 :: Maybe String\nJust \"one hundred and twenty-three\"\n>>> EN.us_cardinal (10^50 + 42) :: Maybe String\nJust \"one hundred quindecillion forty-two\"\n\nFrench, which contains some traces of a base 20 system:\n\n>>> import qualified Text.Numeral.Language.FR as FR\n>>> FR.cardinal (-99) :: Maybe String\nJust \"moins quatre-vingt-dix-neuf\"\n\nConversions can fail. Alamblak, a language spoken by a few people in\nPapua New Guinea, has no representation for negative numbers:\n\n>>> import qualified Text.Numeral.Language.AMP as AMP\n>>> AMP.cardinal (-3) :: Maybe String\nNothing\n\nSome languages have multiple scripts and methods for writing number\nnames. Take Chinese for example, which can be written using Han\ncharacters or transcribed to the Latin script using Pinyin.\n\nTraditional Chinese characters:\n\n>>> import qualified Text.Numeral.Language.ZH as ZH\n>>> ZH.trad_cardinal 123456 :: Maybe String\nJust \"十二萬三千四百五十六\"\n\nSimplified characters for use in financial contexts:\n\n>>> ZH.finance_simpl_cardinal 123456 :: Maybe String\nJust \"拾贰万参仟肆伯伍拾陆\"\n\nTranscribed using Pinyin:\n\n>>> ZH.pinyin_cardinal 123456 :: Maybe String\nJust \"shíèrwàn sānqiān sìbǎi wǔshí liù\"\n\nUsing the 'struct' functions you can see the grammatical structure\nof number names. Because the results of these functions are\npolymorphic you need to specify a specific type.\n\n>>> import qualified Text.Numeral.Language.NL as NL\n>>> NL.struct 123 :: Maybe Integer\nJust 123\n>>> import Text.Numeral\n>>> NL.struct 123 :: Maybe Exp\nJust (Add (Lit 100) (Add (Lit 3) (Mul (Lit 2) (Lit 10))))\n\nCompare with:\n\n>>> NL.cardinal 123 :: Maybe String\nJust \"honderddrieëntwintig\"\n\n100 (honderd) + (3 (drie) + (ën) 2 (twin) * 10 (tig))";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base-unicode-symbols)
          (hsPkgs.containers)
          (hsPkgs.containers-unicode-symbols)
          (hsPkgs.numerals-base)
        ];
      };
      tests = {
        "test-numerals" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.base-unicode-symbols)
            (hsPkgs.containers)
            (hsPkgs.containers-unicode-symbols)
            (hsPkgs.numerals-base)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
          ];
        };
      };
    };
  }