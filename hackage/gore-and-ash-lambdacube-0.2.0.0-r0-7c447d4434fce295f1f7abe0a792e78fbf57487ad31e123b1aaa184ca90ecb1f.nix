{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
          (hsPkgs."gore-and-ash" or ((hsPkgs.pkgs-errors).buildDepError "gore-and-ash"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."lambdacube-compiler" or ((hsPkgs.pkgs-errors).buildDepError "lambdacube-compiler"))
          (hsPkgs."lambdacube-gl" or ((hsPkgs.pkgs-errors).buildDepError "lambdacube-gl"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      exes = {
        "gore-and-ash-lambdacube-example01" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
            (hsPkgs."GLFW-b" or ((hsPkgs.pkgs-errors).buildDepError "GLFW-b"))
            (hsPkgs."gore-and-ash" or ((hsPkgs.pkgs-errors).buildDepError "gore-and-ash"))
            (hsPkgs."gore-and-ash-glfw" or ((hsPkgs.pkgs-errors).buildDepError "gore-and-ash-glfw"))
            (hsPkgs."gore-and-ash-lambdacube" or ((hsPkgs.pkgs-errors).buildDepError "gore-and-ash-lambdacube"))
            (hsPkgs."JuicyPixels" or ((hsPkgs.pkgs-errors).buildDepError "JuicyPixels"))
            (hsPkgs."lambdacube-compiler" or ((hsPkgs.pkgs-errors).buildDepError "lambdacube-compiler"))
            (hsPkgs."lambdacube-gl" or ((hsPkgs.pkgs-errors).buildDepError "lambdacube-gl"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = if flags.examples then true else false;
          };
        "gore-and-ash-lambdacube-example02" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
            (hsPkgs."GLFW-b" or ((hsPkgs.pkgs-errors).buildDepError "GLFW-b"))
            (hsPkgs."gore-and-ash" or ((hsPkgs.pkgs-errors).buildDepError "gore-and-ash"))
            (hsPkgs."gore-and-ash-glfw" or ((hsPkgs.pkgs-errors).buildDepError "gore-and-ash-glfw"))
            (hsPkgs."gore-and-ash-lambdacube" or ((hsPkgs.pkgs-errors).buildDepError "gore-and-ash-lambdacube"))
            (hsPkgs."JuicyPixels" or ((hsPkgs.pkgs-errors).buildDepError "JuicyPixels"))
            (hsPkgs."lambdacube-compiler" or ((hsPkgs.pkgs-errors).buildDepError "lambdacube-compiler"))
            (hsPkgs."lambdacube-gl" or ((hsPkgs.pkgs-errors).buildDepError "lambdacube-gl"))
            (hsPkgs."lambdacube-ir" or ((hsPkgs.pkgs-errors).buildDepError "lambdacube-ir"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."linear" or ((hsPkgs.pkgs-errors).buildDepError "linear"))
            ];
          buildable = if flags.examples then true else false;
          };
        "gore-and-ash-lambdacube-example03" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
            (hsPkgs."GLFW-b" or ((hsPkgs.pkgs-errors).buildDepError "GLFW-b"))
            (hsPkgs."gore-and-ash" or ((hsPkgs.pkgs-errors).buildDepError "gore-and-ash"))
            (hsPkgs."gore-and-ash-glfw" or ((hsPkgs.pkgs-errors).buildDepError "gore-and-ash-glfw"))
            (hsPkgs."gore-and-ash-lambdacube" or ((hsPkgs.pkgs-errors).buildDepError "gore-and-ash-lambdacube"))
            (hsPkgs."JuicyPixels" or ((hsPkgs.pkgs-errors).buildDepError "JuicyPixels"))
            (hsPkgs."lambdacube-compiler" or ((hsPkgs.pkgs-errors).buildDepError "lambdacube-compiler"))
            (hsPkgs."lambdacube-gl" or ((hsPkgs.pkgs-errors).buildDepError "lambdacube-gl"))
            (hsPkgs."lambdacube-ir" or ((hsPkgs.pkgs-errors).buildDepError "lambdacube-ir"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."linear" or ((hsPkgs.pkgs-errors).buildDepError "linear"))
            ];
          buildable = if flags.examples then true else false;
          };
        "gore-and-ash-lambdacube-example04" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
            (hsPkgs."GLFW-b" or ((hsPkgs.pkgs-errors).buildDepError "GLFW-b"))
            (hsPkgs."gore-and-ash" or ((hsPkgs.pkgs-errors).buildDepError "gore-and-ash"))
            (hsPkgs."gore-and-ash-glfw" or ((hsPkgs.pkgs-errors).buildDepError "gore-and-ash-glfw"))
            (hsPkgs."gore-and-ash-lambdacube" or ((hsPkgs.pkgs-errors).buildDepError "gore-and-ash-lambdacube"))
            (hsPkgs."JuicyPixels" or ((hsPkgs.pkgs-errors).buildDepError "JuicyPixels"))
            (hsPkgs."lambdacube-compiler" or ((hsPkgs.pkgs-errors).buildDepError "lambdacube-compiler"))
            (hsPkgs."lambdacube-gl" or ((hsPkgs.pkgs-errors).buildDepError "lambdacube-gl"))
            (hsPkgs."lambdacube-ir" or ((hsPkgs.pkgs-errors).buildDepError "lambdacube-ir"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."linear" or ((hsPkgs.pkgs-errors).buildDepError "linear"))
            ];
          buildable = if flags.examples then true else false;
          };
        };
      };
    }