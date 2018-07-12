{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "data-aviary";
          version = "0.2.2";
        };
        license = "BSD-3-Clause";
        copyright = "Stephen Tetley <stephen.tetley@gmail.com>";
        maintainer = "Stephen Tetley <stephen.tetley@gmail.com>";
        author = "";
        homepage = "http://code.google.com/p/copperbox/";
        url = "";
        synopsis = "Combinator birds.";
        description = "A catalogue of the combinator birds (Data.Aviary.Birds) - this\nmodule is intended more for illustration than utility.\n\n(Data.Aviary.Functional) operations from Applicative, Monad\netc. with their types specialized to the function type. This\nmight be usefulfor /bird-watching/ i.e. spotting instances\nwhere an Applicative, Monad or whatever operation corresponds\nto a combinator bird. Again this module is not intended for\nactual use.\n\nPlus a smaller set (Data.Aviary) intended to be useful,\ncollecting combinators that have already /escaped/ (published\nelsewhere) but aren\\'t in Data.Function, along with some\npersonal favourites.\n\nChangelog:\n\n0.2.2 added Data.Aviary.Functional - Applicative, Monad etc.\nsignatures specialized to the function type.\n\n0.2.1 added @dup@ and the /combiner/ variants of cardinal-prime.\n\n0.2.0 added Haddock docs for @(\\#\\#)@.";
        buildType = "Simple";
      };
      components = {
        "data-aviary" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }