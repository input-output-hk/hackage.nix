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
      identifier = { name = "list-witnesses"; version = "0.1.3.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) Justin Le 2018";
      maintainer = "justin@jle.im";
      author = "Justin Le";
      homepage = "https://github.com/mstksg/list-witnesses#readme";
      url = "";
      synopsis = "Witnesses for working with type-level lists";
      description = "Collection of assorted inductive witnesses and functions for working with\ntype-level lists.\n\n*   *Data.Type.List.Edit* contains single-item edits of lists, including\ninsertion, deletion, and substitution.\n*   *Data.Type.List.Sublist* contains witnesses for prefixes, suffixes, and\ntwo-way splits of type-level lists.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."decidable" or (errorHandler.buildDepError "decidable"))
          (hsPkgs."functor-products" or (errorHandler.buildDepError "functor-products"))
          (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
          (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
          (hsPkgs."vinyl" or (errorHandler.buildDepError "vinyl"))
        ];
        buildable = true;
      };
    };
  }