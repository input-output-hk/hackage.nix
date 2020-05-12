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
      specVersion = "1.10";
      identifier = { name = "netwire-input-glfw"; version = "0.0.1"; };
      license = "MIT";
      copyright = "Pavel Krajcevski, 2014";
      maintainer = "Krajcevski@gmail.com";
      author = "Pavel Krajcevski";
      homepage = "https://www.github.com/Mokosha/netwire-input-glfw";
      url = "";
      synopsis = "GLFW instance of netwire-input";
      description = "This package contains the necessary glue to allow the use\nof wires from the netwire-input package. In general, the types\nassociated here should be used only sparingly to plumb the input\nstate through your netwire program. Otherwise, the state should\nnot be modified directly.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."netwire-input" or (errorHandler.buildDepError "netwire-input"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."GLFW-b" or (errorHandler.buildDepError "GLFW-b"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      };
    }