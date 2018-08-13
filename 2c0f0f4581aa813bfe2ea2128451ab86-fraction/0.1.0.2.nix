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
        name = "fraction";
        version = "0.1.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "© 2009, 2011, 2013 Wolfgang Jeltsch";
      maintainer = "wolfgang@cs.ioc.ee";
      author = "Wolfgang Jeltsch";
      homepage = "http://darcs.wolfgang.jeltsch.info/haskell/fraction";
      url = "http://hackage.haskell.org/packages/archive/fraction/0.1.0.2/fraction-0.1.0.2.tar.gz";
      synopsis = "Fractions";
      description = "This package provides a data type whose values represent fractions.\n\nA fraction can be seen as a real number from the closed interval [0,1]. It can also\nbe seen as a percentage.";
      buildType = "Simple";
    };
    components = {
      "fraction" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.semigroups)
        ];
      };
    };
  }