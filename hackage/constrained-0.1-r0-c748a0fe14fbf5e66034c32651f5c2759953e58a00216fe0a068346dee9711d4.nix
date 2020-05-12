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
      specVersion = "2.0";
      identifier = { name = "constrained"; version = "0.1"; };
      license = "BSD-2-Clause";
      copyright = "";
      maintainer = "Sergey Vinokurov <serg.foo@gmail.com>";
      author = "Sergey Vinokurov";
      homepage = "";
      url = "";
      synopsis = "Generalization of standard Functor, Foldable, and Traversable classes";
      description = "This package generalizes familiar 'Functor', 'Foldable' and 'Traversable'\nfor the case when a functorial type of kind Type -> Type imposes certain constraints\non what can be put in. E.g. 'Set' can only deal with types that are an instance of 'Ord'\nand therefore cannot be made an instance of 'Functor'. But it can be made\nan instance of a constrained functor with a similar interface that this\npackage provides.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }