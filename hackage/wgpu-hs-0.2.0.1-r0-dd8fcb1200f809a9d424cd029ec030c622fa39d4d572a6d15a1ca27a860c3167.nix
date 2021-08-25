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
    flags = { examples = true; };
    package = {
      specVersion = "3.0";
      identifier = { name = "wgpu-hs"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) Jonathan Merritt, 2021";
      maintainer = "j.s.merritt@gmail.com";
      author = "Jonathan Merritt";
      homepage = "";
      url = "";
      synopsis = "WGPU";
      description = "A high-level binding to WGPU.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."GLFW-b" or (errorHandler.buildDepError "GLFW-b"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."wgpu-hs".components.sublibs.wgpu-hs-internal or (errorHandler.buildDepError "wgpu-hs:wgpu-hs-internal"))
          (hsPkgs."wgpu-raw-hs" or (errorHandler.buildDepError "wgpu-raw-hs"))
          ];
        buildable = true;
        };
      sublibs = {
        "wgpu-hs-internal" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."GLFW-b" or (errorHandler.buildDepError "GLFW-b"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."wgpu-raw-hs" or (errorHandler.buildDepError "wgpu-raw-hs"))
            ];
          buildable = true;
          };
        };
      exes = {
        "triangle" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ] ++ (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."GLFW-b" or (errorHandler.buildDepError "GLFW-b"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."wgpu-hs" or (errorHandler.buildDepError "wgpu-hs"))
            ];
          buildable = if flags.examples then true else false;
          };
        };
      };
    }