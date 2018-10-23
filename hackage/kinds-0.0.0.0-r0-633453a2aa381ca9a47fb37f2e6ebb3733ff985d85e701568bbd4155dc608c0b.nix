{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2.3";
      identifier = {
        name = "kinds";
        version = "0.0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "© 2009–2010 Brandenburgische Technische Universität Cottbus";
      maintainer = "jeltsch@tu-cottbus.de";
      author = "Wolfgang Jeltsch";
      homepage = "http://community.haskell.org/~jeltsch/kinds/";
      url = "http://hackage.haskell.org/packages/archive/kinds/0.0.0.0/kinds-0.0.0.0.tar.gz";
      synopsis = "Emulation of subkinds and subkind polymorphism";
      description = "Subkinds are the kind-level analog to subtypes. A kind denotes a set of types, and a\nsubkind of some base kind denotes a subset of the base kind&#x2019;s set of types.\nHaskell has no support for subkinds and subkind polymorphism. However, this package\ncan be used to emulate subkinds of kind&#xA0;@*@ and subkind variables.\n\nTo define a new subkind, the user declares a type that represents the subkind, and\ninstantiates some classes. Afterwards, the user can declare types to be of that\nsubkind and universally quantify over the inhabitants of the subkind. Since subkinds\nare represented by types, type-level polymorphism can be used to emulate kind-level\npolymorphism.";
      buildType = "Simple";
    };
    components = {
      "kinds" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }