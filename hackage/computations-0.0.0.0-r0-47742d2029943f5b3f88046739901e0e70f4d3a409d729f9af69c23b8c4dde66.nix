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
      specVersion = "1.12";
      identifier = { name = "computations"; version = "0.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "© 2012–2015 Wolfgang Jeltsch";
      maintainer = "wolfgang@cs.ioc.ee";
      author = "Wolfgang Jeltsch";
      homepage = "http://darcs.wolfgang.jeltsch.info/haskell/computations";
      url = "http://hackage.haskell.org/packages/archive/computations/0.0.0.0/computations-0.0.0.0.tar.gz";
      synopsis = "Advanced notions of computation";
      description = "This package provides a framework for computations with certain\nconsistency constraints. Based on this framework, it implements\nresourceful computations, which are an alternative to the @IO@\nmondad. In the case of resourceful computations, the consistency\nconstraint is a single-use policy, also known as linearity.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }