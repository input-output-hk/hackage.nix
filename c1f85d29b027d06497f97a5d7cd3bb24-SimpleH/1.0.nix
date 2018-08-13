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
      specVersion = "1.8";
      identifier = {
        name = "SimpleH";
        version = "1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "marc.coiffier@gmail.com";
      author = "Marc Coiffier";
      homepage = "";
      url = "";
      synopsis = "A light, clean and powerful Haskell utility library";
      description = "SimpleH is a Prelude complement that defines a few very useful abstractions, such as Monad transformers, Lenses, parser combinators, reactive abstractions and a few others.\nsynopsis: A light, clean and powerful Haskell utility library";
      buildType = "Simple";
    };
    components = {
      "SimpleH" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.clock)
        ];
      };
    };
  }