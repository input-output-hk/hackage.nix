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
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "gore-and-ash-lambdacube"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Anton Gushcha";
      maintainer = "ncrashed@gmail.com";
      author = "Anton Gushcha";
      homepage = "https://github.com/TeaspotStudio/gore-and-ash-lambdacube#readme";
      url = "";
      synopsis = "Core module for Gore&Ash engine that do something.";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."gore-and-ash" or (errorHandler.buildDepError "gore-and-ash"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."lambdacube-compiler" or (errorHandler.buildDepError "lambdacube-compiler"))
          (hsPkgs."lambdacube-gl" or (errorHandler.buildDepError "lambdacube-gl"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      exes = {
        "gore-and-ash-lambdacube-example01" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."GLFW-b" or (errorHandler.buildDepError "GLFW-b"))
            (hsPkgs."gore-and-ash" or (errorHandler.buildDepError "gore-and-ash"))
            (hsPkgs."gore-and-ash-glfw" or (errorHandler.buildDepError "gore-and-ash-glfw"))
            (hsPkgs."gore-and-ash-lambdacube" or (errorHandler.buildDepError "gore-and-ash-lambdacube"))
            (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
            (hsPkgs."lambdacube-compiler" or (errorHandler.buildDepError "lambdacube-compiler"))
            (hsPkgs."lambdacube-gl" or (errorHandler.buildDepError "lambdacube-gl"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = if flags.examples then true else false;
          };
        "gore-and-ash-lambdacube-example02" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."GLFW-b" or (errorHandler.buildDepError "GLFW-b"))
            (hsPkgs."gore-and-ash" or (errorHandler.buildDepError "gore-and-ash"))
            (hsPkgs."gore-and-ash-glfw" or (errorHandler.buildDepError "gore-and-ash-glfw"))
            (hsPkgs."gore-and-ash-lambdacube" or (errorHandler.buildDepError "gore-and-ash-lambdacube"))
            (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
            (hsPkgs."lambdacube-compiler" or (errorHandler.buildDepError "lambdacube-compiler"))
            (hsPkgs."lambdacube-gl" or (errorHandler.buildDepError "lambdacube-gl"))
            (hsPkgs."lambdacube-ir" or (errorHandler.buildDepError "lambdacube-ir"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
            ];
          buildable = if flags.examples then true else false;
          };
        "gore-and-ash-lambdacube-example03" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."GLFW-b" or (errorHandler.buildDepError "GLFW-b"))
            (hsPkgs."gore-and-ash" or (errorHandler.buildDepError "gore-and-ash"))
            (hsPkgs."gore-and-ash-glfw" or (errorHandler.buildDepError "gore-and-ash-glfw"))
            (hsPkgs."gore-and-ash-lambdacube" or (errorHandler.buildDepError "gore-and-ash-lambdacube"))
            (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
            (hsPkgs."lambdacube-compiler" or (errorHandler.buildDepError "lambdacube-compiler"))
            (hsPkgs."lambdacube-gl" or (errorHandler.buildDepError "lambdacube-gl"))
            (hsPkgs."lambdacube-ir" or (errorHandler.buildDepError "lambdacube-ir"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
            ];
          buildable = if flags.examples then true else false;
          };
        "gore-and-ash-lambdacube-example04" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."GLFW-b" or (errorHandler.buildDepError "GLFW-b"))
            (hsPkgs."gore-and-ash" or (errorHandler.buildDepError "gore-and-ash"))
            (hsPkgs."gore-and-ash-glfw" or (errorHandler.buildDepError "gore-and-ash-glfw"))
            (hsPkgs."gore-and-ash-lambdacube" or (errorHandler.buildDepError "gore-and-ash-lambdacube"))
            (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
            (hsPkgs."lambdacube-compiler" or (errorHandler.buildDepError "lambdacube-compiler"))
            (hsPkgs."lambdacube-gl" or (errorHandler.buildDepError "lambdacube-gl"))
            (hsPkgs."lambdacube-ir" or (errorHandler.buildDepError "lambdacube-ir"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
            ];
          buildable = if flags.examples then true else false;
          };
        };
      };
    }