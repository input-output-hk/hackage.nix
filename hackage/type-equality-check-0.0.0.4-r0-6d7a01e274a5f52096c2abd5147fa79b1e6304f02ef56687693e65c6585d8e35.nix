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
      specVersion = "1.8";
      identifier = { name = "type-equality-check"; version = "0.0.0.4"; };
      license = "BSD-3-Clause";
      copyright = "© 2004      Oleg Kiselyov\n(Fleet Numerical Meteorology and Oceanography\nCenter);\n© 2004      Ralf Lämmel\n(Centrum Wiskunde & Informatica, Vrije Universiteit\nAmsterdam);\n© 2004      Keean Schupke\n(Imperial College London);\n© 2008–2009 Brandenburgische Technische Universität Cottbus;\n© 2011–2012 Wolfgang Jeltsch";
      maintainer = "wolfgang@cs.ioc.ee";
      author = "Wolfgang Jeltsch";
      homepage = "http://darcs.wolfgang.jeltsch.info/haskell/type-equality-check";
      url = "http://hackage.haskell.org/packages/archive/type-equality-check/0.0.0.4/type-equality-check-0.0.0.4.tar.gz";
      synopsis = "Type equality check";
      description = "This packages provides a type equality check whose implementation\nis basically the one from the HList library.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."type-level" or (errorHandler.buildDepError "type-level"))
        ];
        buildable = true;
      };
    };
  }