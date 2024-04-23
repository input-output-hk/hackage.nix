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
      identifier = { name = "easytensor-vulkan"; version = "2.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2019 Artem Chirkin";
      maintainer = "achirkin@users.noreply.github.com";
      author = "Artem Chirkin";
      homepage = "https://github.com/achirkin/easytensor#readme";
      url = "";
      synopsis = "Use easytensor with vulkan-api.";
      description = "Use easytensor DataFrame types with vulkan-api. This package provides an orphan instance of PrimBytes for Vulkan structures, so they can be used as elements of DataFrames. In addition, it provides a few helper functions for working with array-like structures.";
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