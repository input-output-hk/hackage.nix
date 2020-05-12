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
      specVersion = "1.2";
      identifier = { name = "bloxorz"; version = "0.1.2"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Viktor Devecseri <devi86@gmail.com>";
      author = "Viktor Devecseri";
      homepage = "";
      url = "";
      synopsis = "OpenGL Logic Game";
      description = "Roll the block on the board to the end hole.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "bloxorz" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
            (hsPkgs."GLFW" or (errorHandler.buildDepError "GLFW"))
            ];
          buildable = true;
          };
        };
      };
    }