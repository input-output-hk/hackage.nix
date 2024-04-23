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
      identifier = { name = "keid-ui-dearimgui"; version = "0.1.2.1"; };
      license = "BSD-3-Clause";
      copyright = "2023 IC Rainbow";
      maintainer = "keid@aenor.ru";
      author = "IC Rainbow";
      homepage = "";
      url = "";
      synopsis = "DearImGui elements for Keid engine.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."GLFW-b" or (errorHandler.buildDepError "GLFW-b"))
          (hsPkgs."VulkanMemoryAllocator" or (errorHandler.buildDepError "VulkanMemoryAllocator"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."dear-imgui" or (errorHandler.buildDepError "dear-imgui"))
          (hsPkgs."keid-core" or (errorHandler.buildDepError "keid-core"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."rio" or (errorHandler.buildDepError "rio"))
          (hsPkgs."rio-app" or (errorHandler.buildDepError "rio-app"))
          (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."vulkan" or (errorHandler.buildDepError "vulkan"))
          (hsPkgs."vulkan-utils" or (errorHandler.buildDepError "vulkan-utils"))
        ];
        buildable = true;
      };
    };
  }