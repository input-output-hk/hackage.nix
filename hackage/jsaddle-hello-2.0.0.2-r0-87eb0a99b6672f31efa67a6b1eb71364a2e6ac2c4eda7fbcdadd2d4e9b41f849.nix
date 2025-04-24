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
      specVersion = "3.0";
      identifier = { name = "jsaddle-hello"; version = "2.0.0.2"; };
      license = "MIT";
      copyright = "(c) Hamish Mackenzie";
      maintainer = "Hamish Mackenzie <Hamish.K.Mackenzie@gmail.com>";
      author = "Hamish Mackenzie";
      homepage = "https://github.com/ghcjs/jsaddle-hello";
      url = "";
      synopsis = "JSaddle Hello World, an example package";
      description = "This is an implementation of the classic \"Hello World\" program using JSaddle,\nas an example of how to create a minimal JSaddle application.\nPlease submit any suggestions and improvements.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."jsaddle" or (errorHandler.buildDepError "jsaddle"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      exes = {
        "jsaddle-hello" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."jsaddle-hello" or (errorHandler.buildDepError "jsaddle-hello"))
            (hsPkgs."jsaddle-warp" or (errorHandler.buildDepError "jsaddle-warp"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
        "jsaddle-hello-webkitgtk" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."jsaddle-hello" or (errorHandler.buildDepError "jsaddle-hello"))
            (hsPkgs."jsaddle-webkit2gtk" or (errorHandler.buildDepError "jsaddle-webkit2gtk"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = if compiler.isGhcjs && true || system.isJavaScript || system.isOsx
            then false
            else true;
        };
        "jsaddle-hello-wkwebview" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."jsaddle-hello" or (errorHandler.buildDepError "jsaddle-hello"))
            (hsPkgs."jsaddle-wkwebview" or (errorHandler.buildDepError "jsaddle-wkwebview"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = if !system.isOsx || compiler.isGhcjs && true || system.isJavaScript
            then false
            else true;
        };
      };
    };
  }