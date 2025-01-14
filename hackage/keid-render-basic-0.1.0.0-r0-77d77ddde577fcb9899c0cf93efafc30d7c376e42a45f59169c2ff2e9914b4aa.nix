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
      identifier = { name = "keid-render-basic"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2021 IC Rainbow";
      maintainer = "keid@aenor.ru";
      author = "IC Rainbow";
      homepage = "";
      url = "";
      synopsis = "Basic rendering programs for Keid engine.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."GLFW-b" or (errorHandler.buildDepError "GLFW-b"))
          (hsPkgs."VulkanMemoryAllocator" or (errorHandler.buildDepError "VulkanMemoryAllocator"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cryptohash-md5" or (errorHandler.buildDepError "cryptohash-md5"))
          (hsPkgs."derive-storable" or (errorHandler.buildDepError "derive-storable"))
          (hsPkgs."derive-storable-plugin" or (errorHandler.buildDepError "derive-storable-plugin"))
          (hsPkgs."foldl" or (errorHandler.buildDepError "foldl"))
          (hsPkgs."geomancy" or (errorHandler.buildDepError "geomancy"))
          (hsPkgs."keid-core" or (errorHandler.buildDepError "keid-core"))
          (hsPkgs."neat-interpolation" or (errorHandler.buildDepError "neat-interpolation"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."rio" or (errorHandler.buildDepError "rio"))
          (hsPkgs."rio-app" or (errorHandler.buildDepError "rio-app"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."vulkan" or (errorHandler.buildDepError "vulkan"))
          (hsPkgs."vulkan-utils" or (errorHandler.buildDepError "vulkan-utils"))
          (hsPkgs."zstd" or (errorHandler.buildDepError "zstd"))
        ];
        buildable = true;
      };
    };
  }