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
      identifier = {
        name = "vector-instances-collections";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tob.brandt@gmail.com";
      author = "Tobias Brandt";
      homepage = "http://github.com/kreuzschlitzschraubenzieher/vector-instances-collections";
      url = "";
      synopsis = "Instances of the Data.Collections classes for Data.Vector.*";
      description = "This package defines instances of the Foldable, Unfoldable,\nCollection, Sequence and Indexed classes from Data.Collections for\nall pure Vector types (those found in Data.Vector, Data.Vector.Unboxed,\nData.Vector.Primitive, Data.Vector.Storable).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."collections-api" or (errorHandler.buildDepError "collections-api"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ];
        buildable = true;
      };
    };
  }