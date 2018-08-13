{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.14";
      identifier = {
        name = "ghc-dup";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2012 Joachim Breitner";
      maintainer = "Joachim Breitner <mail@joachim-breitner.de>";
      author = "Joachim Breitner";
      homepage = "";
      url = "";
      synopsis = "Explicitly prevent sharing";
      description = "This package provides two new operations, 'GHC.Dup.dup' and 'GHC.Dup.deepDup', that allow the\nprogrammer to prevent the result of two evaluations of the same expression to\nbe shared.\n\nSee <http://arxiv.org/abs/1207.2017> for more background.\n\n/This is still experimental software and can likely cause your program to crash./\n\nThe work on this package has been supported by the Deutsche Telekom Stiftung\n(<http://telekom-stiftung.de>).";
      buildType = "Simple";
    };
    components = {
      "ghc-dup" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ghc)
        ];
      };
    };
  }