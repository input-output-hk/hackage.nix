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
      identifier = { name = "red-black-record"; version = "2.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "diaz_carrete@yahoo.com";
      author = "Daniel Diaz";
      homepage = "";
      url = "";
      synopsis = "Extensible records and variants indexed by a type-level Red-Black tree.";
      description = "A library that provides extensible records and variants,\nboth indexed by a type-level red-black tree that maps\nSymbol keys to value types of any kind.\n\nThe keys correspond to fields\nnames in records, and to branch names in variants.\n\nAt the term level, value types come wrapped in a type\nconstructor of kind @q -> Type@, where @q@ is the kind of\nvalue types.\n\nThe records and variants can be converted to and from\nregular Haskell datatypes; also to and from the unlabelled\nn-ary products and sums of the @sop-core@ package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."sop-core" or (errorHandler.buildDepError "sop-core"))
        ];
        buildable = true;
      };
      sublibs = {
        "demoted" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sop-core" or (errorHandler.buildDepError "sop-core"))
            (hsPkgs."red-black-record" or (errorHandler.buildDepError "red-black-record"))
          ];
          buildable = true;
        };
      };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sop-core" or (errorHandler.buildDepError "sop-core"))
            (hsPkgs."red-black-record" or (errorHandler.buildDepError "red-black-record"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
          ];
          buildable = true;
        };
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sop-core" or (errorHandler.buildDepError "sop-core"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."red-black-record" or (errorHandler.buildDepError "red-black-record"))
            (hsPkgs."red-black-record".components.sublibs.demoted or (errorHandler.buildDepError "red-black-record:demoted"))
          ];
          buildable = true;
        };
      };
    };
  }