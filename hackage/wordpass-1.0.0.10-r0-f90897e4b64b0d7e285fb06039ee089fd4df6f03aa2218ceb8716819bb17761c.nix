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
      specVersion = "1.10";
      identifier = {
        name = "wordpass";
        version = "1.0.0.10";
      };
      license = "BSD-3-Clause";
      copyright = "Michal J. Gajda";
      maintainer = "mjgajda@gmail.com";
      author = "Michal J. Gajda";
      homepage = "https://github.com/mgajda/wordpass";
      url = "";
      synopsis = "Dictionary-based password generator";
      description = "This script reads dict word lists and generates word-based passwords.\nNot unlike <http://xkcd.com/936/ xkcd>.\n\nProgram also prints how many words have been read, and indicates estimated\npassword space size in bits.\n\nUsing just four words from default English dictionary of ~50k words will\ngive approximately 90 bits of entropy. Lucky speakers of languages with\nrich inflection like Polish (over 3 million words) can easily up this to\nover 110 bits of entropy.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.containers)
          (hsPkgs.vector)
          (hsPkgs.directory)
          (hsPkgs.unix-compat)
          (hsPkgs.deepseq)
          (hsPkgs.QuickCheck)
          (hsPkgs.filepath)
        ];
      };
      exes = {
        "wordpass" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.containers)
            (hsPkgs.vector)
            (hsPkgs.directory)
            (hsPkgs.optparse-applicative)
            (hsPkgs.unix-compat)
            (hsPkgs.deepseq)
            (hsPkgs.filepath)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }