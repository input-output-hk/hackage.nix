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
      specVersion = "1.10";
      identifier = { name = "rank2classes"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2017 Mario Blažević";
      maintainer = "Mario Blažević <blamario@protonmail.com>";
      author = "Mario Blažević";
      homepage = "https://github.com/blamario/grampa/tree/master/rank2classes";
      url = "";
      synopsis = "a mirror image of some standard type classes, with methods of rank 2 types";
      description = "A mirror image of the standard constructor type class hierarchy rooted in 'Functor', except with methods of rank 2\ntypes and class instances of kind @(*->*)->*@. The classes enable generic handling of heterogenously typed data\nstructures and other neat tricks.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."rank2classes" or (errorHandler.buildDepError "rank2classes"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            ];
          buildable = true;
          };
        };
      };
    }