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
      specVersion = "1.2";
      identifier = {
        name = "fraction";
        version = "0.0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "© 2009 Wolfgang Jeltsch";
      maintainer = "jeltsch@informatik.tu-cottbus.de";
      author = "Wolfgang Jeltsch";
      homepage = "http://community.haskell.org/~jeltsch/fraction/";
      url = "http://hackage.haskell.org/packages/archive/fraction/0.0.0.0/fraction-0.0.0.0.tar.gz";
      synopsis = "Fractions";
      description = "This package provides a data type whose values represent fractions.\n\nA fraction can be seen as a real number from the closed interval [0,1]. It can also\nbe seen as a percentage.";
      buildType = "Simple";
    };
    components = {
      "fraction" = {
        depends  = [
          (hsPkgs.algebra)
          (hsPkgs.base)
        ];
      };
    };
  }