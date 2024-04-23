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
      identifier = { name = "non-empty"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://code.haskell.org/~thielema/non-empty/";
      url = "";
      synopsis = "List-like structures with static checks on the number of elements";
      description = "We provide a data type that allows to store a list-like structure\nwith at least or exactly @n@ elements,\nwhere @n@ is fixed in the type in a kind of Peano encoding\nand is usually small.\nThe datatype is intended to increase safety\nby making functions total that are partial on plain lists.\nE.g. on a non-empty list, 'head' and 'tail' are always defined.\n\nThe package uses Haskell 98.\n\nSimilar packages:\n\n* @semigroups@, @semigroupoids@:\nrestricted to lists, minimum number of elements: 1,\nprovides more type classes tailored to the use of non-empty lists.\n\n* @NonEmptyList@:\nrestricted to lists, minimum number of elements: 1\n\n* @NonEmpty@:\nrestricted to lists, minimum number of elements: 1,\ndesigned for unqualified use of identifiers\n\n* @Cardinality@:@NeverEmptyList@\n\n* <http://www.haskell.org/haskellwiki/Non-empty_list>\n\nRelated packages:\n\n* @Stream@:\nLists that contain always infinitely many elements.\n\n* @fixed-list@:\nUses the same data structure as this package\nbut is intended for fixing the number of elements in a list.\nRequires multi-parameter type classes with functional dependencies.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ];
        buildable = true;
      };
    };
  }