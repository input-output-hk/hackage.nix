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
      identifier = { name = "total-maps"; version = "1.0.0.2"; };
      license = "MIT";
      copyright = "2015 Paweł Nowak";
      maintainer = "pawel834@gmail.com";
      author = "Paweł Nowak";
      homepage = "";
      url = "";
      synopsis = "Dense and sparse total maps.";
      description = "Total maps are maps that contain a value for every key. This library provides\nvarious flavors of total maps.\n\nDense maps store values for all keys. Sparse maps store a default value\nand the values which differ from the default. Sparse maps trade the lack\nof Traversable for a very fast Foldable instance (if the data is really sparse).\n\nBounded maps require the key type to be enumerable and bounded (have a\nfinite number of values) for most of their functionality. Subset maps do not\nrequire the key to be bounded, instead they are parametized by a finite set of\nvalid keys. The key subset is retrieved with help of the excellent\n'reflection' library.\n\nThe Data.Total.Array modules provide total map implementations based on vectors.\nIt should usually be faster then Maps, unless you need to adjust single elements.\n\nMaps in this library provide most of their functions in typeclasses and so\nthe modules are designed to be imported unqualified.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."reflection" or (errorHandler.buildDepError "reflection"))
          (hsPkgs."keys" or (errorHandler.buildDepError "keys"))
          (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
          (hsPkgs."bytes" or (errorHandler.buildDepError "bytes"))
          (hsPkgs."distributive" or (errorHandler.buildDepError "distributive"))
          (hsPkgs."adjunctions" or (errorHandler.buildDepError "adjunctions"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."base-compat" or (errorHandler.buildDepError "base-compat"))
        ];
        buildable = true;
      };
    };
  }