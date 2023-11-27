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
      specVersion = "2.2";
      identifier = { name = "neononempty"; version = "1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "owen@owen.cafe";
      author = "Owen Shepherd";
      homepage = "https://github.com/414owen/neononempty";
      url = "";
      synopsis = "NonEmpty lists that look [more, like, this]";
      description = "This package provides @NonEmpty@, an alternative to the NonEmpty type\nin base.\n\nIt has a few differences from base's NonEmpty:\n\n* It has @Show@ and @Read@ instance similar to that of normal lists\n* It has a 100% safe API\n* It has a few added\\/removed\\/updated functions (see @Data.List.NeoNonEmpty@'s module docs)\n* New functions aren't tied to new versions of GHC/base\n\nThe show instance is the original raison d'être. When scanning textual data,\nthe brain can interpret uniformity more quickly. Which do you think is easier\nto scan?\n\n> x :| [y, z]\n> [x, y, z]\n\nNow imagine this in various fields of a large compound structure, and you\nhave two of them, and you're trying to find the difference.\n\n>>> :set -XOverloadedLists\n>>> aNonEmpty [1, 2, 3]\n[1,2,3]\n>>> read \"[1, 2, 3]\" :: NonEmpty Int\n[1,2,3]";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base-compat" or (errorHandler.buildDepError "base-compat"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."neononempty" or (errorHandler.buildDepError "neononempty"))
            ];
          buildable = true;
          };
        };
      };
    }