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
      identifier = { name = "Southpaw"; version = "0.1.0.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "jonatanhsundqvist@gmail.com";
      author = "Jonatan H Sundqvist";
      homepage = "";
      url = "";
      synopsis = "Assorted utility modules";
      description = "Various unrelated utility modules.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."Win32" or (errorHandler.buildDepError "Win32"))
          (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
          (hsPkgs."GLFW-b" or (errorHandler.buildDepError "GLFW-b"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."gtk3" or (errorHandler.buildDepError "gtk3"))
          (hsPkgs."cairo" or (errorHandler.buildDepError "cairo"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."ALUT" or (errorHandler.buildDepError "ALUT"))
          (hsPkgs."OpenAL" or (errorHandler.buildDepError "OpenAL"))
          (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
          ];
        buildable = true;
        };
      };
    }