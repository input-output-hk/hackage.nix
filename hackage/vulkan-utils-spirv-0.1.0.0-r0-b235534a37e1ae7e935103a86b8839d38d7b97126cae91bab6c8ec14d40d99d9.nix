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
      identifier = { name = "vulkan-utils-spirv"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "IC Rainbow <aenor.realm@gmail.com>";
      author = "";
      homepage = "https://github.com/haskell-game/vulkan#readme";
      url = "";
      synopsis = "Generate Haskell types and Vulkan descriptor/pipeline layouts from SPIR-V reflection";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."gl-block" or (errorHandler.buildDepError "gl-block"))
          (hsPkgs."ptrdiff" or (errorHandler.buildDepError "ptrdiff"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."spirv-enum" or (errorHandler.buildDepError "spirv-enum"))
          (hsPkgs."spirv-reflect-ffi" or (errorHandler.buildDepError "spirv-reflect-ffi"))
          (hsPkgs."spirv-reflect-types" or (errorHandler.buildDepError "spirv-reflect-types"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unliftio-core" or (errorHandler.buildDepError "unliftio-core"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."vulkan" or (errorHandler.buildDepError "vulkan"))
          (hsPkgs."vulkan-utils" or (errorHandler.buildDepError "vulkan-utils"))
        ];
        buildable = true;
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."geomancy" or (errorHandler.buildDepError "geomancy"))
            (hsPkgs."gl-block" or (errorHandler.buildDepError "gl-block"))
            (hsPkgs."spirv-reflect-ffi" or (errorHandler.buildDepError "spirv-reflect-ffi"))
            (hsPkgs."spirv-reflect-types" or (errorHandler.buildDepError "spirv-reflect-types"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."vulkan" or (errorHandler.buildDepError "vulkan"))
            (hsPkgs."vulkan-utils" or (errorHandler.buildDepError "vulkan-utils"))
            (hsPkgs."vulkan-utils-spirv" or (errorHandler.buildDepError "vulkan-utils-spirv"))
          ];
          buildable = true;
        };
      };
    };
  }