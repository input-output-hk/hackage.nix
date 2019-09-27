let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."gore-and-ash" or (buildDepError "gore-and-ash"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."lambdacube-compiler" or (buildDepError "lambdacube-compiler"))
          (hsPkgs."lambdacube-gl" or (buildDepError "lambdacube-gl"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      exes = {
        "gore-and-ash-lambdacube-example01" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            (hsPkgs."GLFW-b" or (buildDepError "GLFW-b"))
            (hsPkgs."gore-and-ash" or (buildDepError "gore-and-ash"))
            (hsPkgs."gore-and-ash-glfw" or (buildDepError "gore-and-ash-glfw"))
            (hsPkgs."gore-and-ash-lambdacube" or (buildDepError "gore-and-ash-lambdacube"))
            (hsPkgs."JuicyPixels" or (buildDepError "JuicyPixels"))
            (hsPkgs."lambdacube-compiler" or (buildDepError "lambdacube-compiler"))
            (hsPkgs."lambdacube-gl" or (buildDepError "lambdacube-gl"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          buildable = if flags.examples then true else false;
          };
        "gore-and-ash-lambdacube-example02" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            (hsPkgs."GLFW-b" or (buildDepError "GLFW-b"))
            (hsPkgs."gore-and-ash" or (buildDepError "gore-and-ash"))
            (hsPkgs."gore-and-ash-glfw" or (buildDepError "gore-and-ash-glfw"))
            (hsPkgs."gore-and-ash-lambdacube" or (buildDepError "gore-and-ash-lambdacube"))
            (hsPkgs."JuicyPixels" or (buildDepError "JuicyPixels"))
            (hsPkgs."lambdacube-compiler" or (buildDepError "lambdacube-compiler"))
            (hsPkgs."lambdacube-gl" or (buildDepError "lambdacube-gl"))
            (hsPkgs."lambdacube-ir" or (buildDepError "lambdacube-ir"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."linear" or (buildDepError "linear"))
            ];
          buildable = if flags.examples then true else false;
          };
        "gore-and-ash-lambdacube-example03" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            (hsPkgs."GLFW-b" or (buildDepError "GLFW-b"))
            (hsPkgs."gore-and-ash" or (buildDepError "gore-and-ash"))
            (hsPkgs."gore-and-ash-glfw" or (buildDepError "gore-and-ash-glfw"))
            (hsPkgs."gore-and-ash-lambdacube" or (buildDepError "gore-and-ash-lambdacube"))
            (hsPkgs."JuicyPixels" or (buildDepError "JuicyPixels"))
            (hsPkgs."lambdacube-compiler" or (buildDepError "lambdacube-compiler"))
            (hsPkgs."lambdacube-gl" or (buildDepError "lambdacube-gl"))
            (hsPkgs."lambdacube-ir" or (buildDepError "lambdacube-ir"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."linear" or (buildDepError "linear"))
            ];
          buildable = if flags.examples then true else false;
          };
        "gore-and-ash-lambdacube-example04" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            (hsPkgs."GLFW-b" or (buildDepError "GLFW-b"))
            (hsPkgs."gore-and-ash" or (buildDepError "gore-and-ash"))
            (hsPkgs."gore-and-ash-glfw" or (buildDepError "gore-and-ash-glfw"))
            (hsPkgs."gore-and-ash-lambdacube" or (buildDepError "gore-and-ash-lambdacube"))
            (hsPkgs."JuicyPixels" or (buildDepError "JuicyPixels"))
            (hsPkgs."lambdacube-compiler" or (buildDepError "lambdacube-compiler"))
            (hsPkgs."lambdacube-gl" or (buildDepError "lambdacube-gl"))
            (hsPkgs."lambdacube-ir" or (buildDepError "lambdacube-ir"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."linear" or (buildDepError "linear"))
            ];
          buildable = if flags.examples then true else false;
          };
        };
      };
    }