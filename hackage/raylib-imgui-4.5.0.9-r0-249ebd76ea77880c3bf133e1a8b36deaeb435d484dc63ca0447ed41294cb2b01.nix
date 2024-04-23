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
    flags = { example = false; };
    package = {
      specVersion = "2.4";
      identifier = { name = "raylib-imgui"; version = "4.5.0.9"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "Anut";
      author = "Anut";
      homepage = "";
      url = "";
      synopsis = "Haskell bindings for rlImGui";
      description = "This package contains simple bindings to the functions defined in rlImGui, allowing raylib and Dear ImGui interop";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."h-raylib" or (errorHandler.buildDepError "h-raylib"))
        ];
        buildable = true;
      };
      exes = {
        "example" = {
          depends = pkgs.lib.optionals (!!flags.example) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."dear-imgui" or (errorHandler.buildDepError "dear-imgui"))
            (hsPkgs."gl" or (errorHandler.buildDepError "gl"))
            (hsPkgs."GLFW-b" or (errorHandler.buildDepError "GLFW-b"))
            (hsPkgs."h-raylib" or (errorHandler.buildDepError "h-raylib"))
            (hsPkgs."raylib-imgui" or (errorHandler.buildDepError "raylib-imgui"))
          ];
          buildable = if !flags.example then false else true;
        };
      };
    };
  }