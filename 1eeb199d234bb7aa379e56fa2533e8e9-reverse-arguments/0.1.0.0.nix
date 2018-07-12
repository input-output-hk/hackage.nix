{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "reverse-arguments";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2016 Anselm Jonas Scholl";
        maintainer = "anselm.scholl@tu-harburg.de";
        author = "Anselm Jonas Scholl";
        homepage = "";
        url = "";
        synopsis = "Reverse the arguments of arbitrary functions.";
        description = "This module provides the 'reverseArgs' function which flips\nthe arguments of a function of arbitrary arity. The return\nvalue of the flipped function can not be fully polymorphic\nas this could imply it is a function.\n\nExample:\n\n> myFlip :: (a -> b -> c -> d -> [e]) -> d -> c -> b -> a -> [e]\n> myFlip = reverseArgs\n\nHowever, if you supply a proof (of the form @IsFun a ~ 'False@)\nthat a is not a function, you can also return a polymorphic type.\n\nExample:\n\n> myFlip :: IsFun e ~ 'False => (a -> b -> c -> d -> e) -> d -> c -> b -> a -> e\n> myFlip = reverseArgs";
        buildType = "Simple";
      };
      components = {
        "reverse-arguments" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }