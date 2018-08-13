{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      usestm = true;
      base4 = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "monad-loops";
        version = "0.3.3.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "James Cook <mokus@deepbondi.net>";
      author = "James Cook <mokus@deepbondi.net>";
      homepage = "https://github.com/mokus0/monad-loops";
      url = "";
      synopsis = "Monadic loops";
      description = "Some useful control operators for looping.\n\nNew in 0.3.2.0: various functions for traversing lists and\ncomputing minima/maxima using arbitrary procedures to compare\nor score the elements.";
      buildType = "Simple";
    };
    components = {
      "monad-loops" = {
        depends  = [
          (hsPkgs.base)
        ] ++ pkgs.lib.optional (_flags.usestm) (hsPkgs.stm);
      };
    };
  }