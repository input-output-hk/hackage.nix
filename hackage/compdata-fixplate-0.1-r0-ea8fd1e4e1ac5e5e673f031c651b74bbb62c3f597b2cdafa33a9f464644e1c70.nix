{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "compdata-fixplate";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Emil Axelsson";
      maintainer = "78emil@gmail.com";
      author = "Emil Axelsson";
      homepage = "";
      url = "";
      synopsis = "Compdata basics implemented on top of Fixplate";
      description = "This package implements the basic interface of\n<https://hackage.haskell.org/package/compdata Compdata>\nusing other packages which together provide similar\nfunctionality.\n\nNotably:\n\n* <https://hackage.haskell.org/package/fixplate Fixplate>\nprovides the basic term representation and generic\ntraversals,\n\n* <https://hackage.haskell.org/package/deriving-compat deriving-compat>\nprovides generic deriving of type classes for functor\ntypes.";
      buildType = "Simple";
    };
    components = {
      "compdata-fixplate" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.composition)
          (hsPkgs.containers)
          (hsPkgs.deriving-compat)
          (hsPkgs.fixplate)
          (hsPkgs.tree-view)
        ];
      };
    };
  }