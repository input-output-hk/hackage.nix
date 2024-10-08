{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "fraction"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "© 2009, 2011 Wolfgang Jeltsch";
      maintainer = "wolfgang@cs.ioc.ee";
      author = "Wolfgang Jeltsch";
      homepage = "http://darcs.wolfgang.jeltsch.info/haskell/fraction";
      url = "http://hackage.haskell.org/packages/archive/fraction/0.1.0.0/fraction-0.1.0.0.tar.gz";
      synopsis = "Fractions";
      description = "This package provides a data type whose values represent fractions.\n\nA fraction can be seen as a real number from the closed interval [0,1]. It can also\nbe seen as a percentage.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ];
        buildable = true;
      };
    };
  }