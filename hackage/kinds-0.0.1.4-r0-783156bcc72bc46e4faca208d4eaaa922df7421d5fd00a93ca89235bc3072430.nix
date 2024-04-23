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
      identifier = { name = "kinds"; version = "0.0.1.4"; };
      license = "BSD-3-Clause";
      copyright = "© 2009–2010 Brandenburgische Technische Universität Cottbus; © 2011 Wolfgang Jeltsch";
      maintainer = "wolfgang@cs.ioc.ee";
      author = "Wolfgang Jeltsch";
      homepage = "http://darcs.wolfgang.jeltsch.info/haskell/kinds";
      url = "http://hackage.haskell.org/packages/archive/kinds/0.0.1.4/kinds-0.0.1.4.tar.gz";
      synopsis = "Emulation of subkinds and subkind polymorphism";
      description = "Subkinds are the kind-level analog to subtypes. A kind denotes a set of types, and a\nsubkind of some base kind denotes a subset of the base kind&#x2019;s set of types.\nHaskell has no support for subkinds and subkind polymorphism. However, this package\ncan be used to emulate subkinds of kind&#xA0;@*@ and subkind variables.\n\nTo define a new subkind, the user declares a type that represents the subkind, and\ninstantiates some classes. Afterwards, the user can declare types to be of that\nsubkind and universally quantify over the inhabitants of the subkind. Since subkinds\nare represented by types, type-level polymorphism can be used to emulate kind-level\npolymorphism.\n\nFor detailed information, please refer to Section&#xA0;6 of the paper\n/Generic Record Combinators with Static Type Checking/.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }