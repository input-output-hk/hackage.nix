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
      specVersion = "1.6";
      identifier = {
        name = "hangman";
        version = "1.0";
      };
      license = "MIT";
      copyright = "(c) 2012 Hok Shun Poon";
      maintainer = "Hok Shun Poon <fushunpoon _ gmail _ com>";
      author = "Hok Shun Poon <fushunpoon _ gmail _ com>";
      homepage = "";
      url = "";
      synopsis = "Hangman implementation in Haskell written in two hours.";
      description = "A command line implementation of the classic hangman game.\nI wrote this when I was desperately bored during exam revision period\nin a couple of hours.\nHopefully you will find the implementation to be of use. It sort of began as\nan assessment of the Haskell development experience, but I plan to continue\nto maintain and extend the implementation to demonstrate how to apply good\nsoftware development practises to Haskell code.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hangman" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.random)
            (hsPkgs.utility-ht)
          ];
        };
      };
    };
  }