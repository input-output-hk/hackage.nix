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
      specVersion = "1.22";
      identifier = { name = "easytensor-vulkan"; version = "1.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) Artem Chirkin";
      maintainer = "chirkin@arch.ethz.ch";
      author = "Artem Chirkin";
      homepage = "https://github.com/achirkin/easytensor#readme";
      url = "";
      synopsis = "Use easytensor with vulkan-api";
      description = "Use easytensor DataFrame types with vulkan-api.\nThis package provides an orphan instance of PrimBytes for Vulkan structures,\nso they can be used as elements of DataFrames.\nIn addition, it provides a few helper functions for working with array-like\nstructures.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."dimensions" or (errorHandler.buildDepError "dimensions"))
          (hsPkgs."easytensor" or (errorHandler.buildDepError "easytensor"))
          (hsPkgs."vulkan-api" or (errorHandler.buildDepError "vulkan-api"))
        ];
        buildable = true;
      };
    };
  }