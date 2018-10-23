{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "io-memoize";
        version = "1.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2014 Dan Burton";
      maintainer = "danburton.email@gmail.com";
      author = "Dan Burton";
      homepage = "";
      url = "";
      synopsis = "Memoize IO actions";
      description = "Transform an IO action into a similar IO action\nthat performs the original action only once.\n\nYou can choose to perform the original action\nin one of two ways:\n\n(1) lazily (might never be performed)\n\n(2) eagerly (concurrent)\n\nSpecial thanks to shachaf and headprogrammingczar from #haskell irc\nfor helping me reason about the behavior of this library.";
      buildType = "Simple";
    };
    components = {
      "io-memoize" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.async)
        ];
      };
    };
  }