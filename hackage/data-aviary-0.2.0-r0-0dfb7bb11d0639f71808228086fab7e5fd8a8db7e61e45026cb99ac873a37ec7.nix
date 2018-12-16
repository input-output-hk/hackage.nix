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
        name = "data-aviary";
        version = "0.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "Stephen Tetley <stephen.tetley@gmail.com>";
      maintainer = "Stephen Tetley <stephen.tetley@gmail.com>";
      author = "";
      homepage = "http://code.google.com/p/copperbox/";
      url = "";
      synopsis = "Combinator birds.";
      description = "A catalogue of the combinator birds (Data.Aviary.Birds) - this\nmodule is intended more for illustration than utility.\n\nPlus a smaller set (Data.Avery) intended to be useful,\ncollecting combinators that have already /escaped/ (published\nelsewhere) but aren\\'t in Data.Function, along with some other\nfavourites.\n\nChangelog:\n\n0.2.0 added Haddock docs for @(\\#\\#)@.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) ];
      };
    };
  }