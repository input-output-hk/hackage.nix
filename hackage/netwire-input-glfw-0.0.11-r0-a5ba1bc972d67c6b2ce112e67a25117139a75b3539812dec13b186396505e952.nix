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
      identifier = { name = "netwire-input-glfw"; version = "0.0.11"; };
      license = "MIT";
      copyright = "Pavel Krajcevski, 2014-2018";
      maintainer = "Krajcevski@gmail.com";
      author = "Pavel Krajcevski";
      homepage = "https://www.github.com/Mokosha/netwire-input-glfw";
      url = "";
      synopsis = "GLFW instance of netwire-input";
      description = "This package contains the necessary glue to allow the use\nof wires from the netwire-input package. In general, the\ntypes associated here should be used only sparingly to\nplumb the input state through your netwire program.\nOtherwise, the state should not be modified directly.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."netwire-input" or (errorHandler.buildDepError "netwire-input"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."GLFW-b" or (errorHandler.buildDepError "GLFW-b"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      exes = {
        "glfw-input-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."netwire" or (errorHandler.buildDepError "netwire"))
            (hsPkgs."netwire-input" or (errorHandler.buildDepError "netwire-input"))
            (hsPkgs."netwire-input-glfw" or (errorHandler.buildDepError "netwire-input-glfw"))
            (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
            (hsPkgs."GLFW-b" or (errorHandler.buildDepError "GLFW-b"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            ];
          buildable = if flags.examples then true else false;
          };
        };
      };
    }