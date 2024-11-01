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
    flags = { jsffi = true; debug = false; };
    package = {
      specVersion = "3.6";
      identifier = { name = "ghcjs-dom"; version = "0.9.9.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Hamish Mackenzie <Hamish.K.Mackenzie@googlemail.com>";
      author = "Hamish Mackenzie";
      homepage = "";
      url = "";
      synopsis = "DOM library that supports both GHCJS and GHC";
      description = "Documentent Object Model (DOM) functions that work with\nGHCJS, but can also be used with GHC and a Browser.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ] ++ (if flags.jsffi && (compiler.isGhcjs && compiler.version.lt "9" || compiler.isGhc && compiler.version.ge "9.6.4" && system.isJavaScript)
          then if compiler.isGhcjs && compiler.version.lt "9"
            then [
              (hsPkgs."ghcjs-dom-jsffi" or (errorHandler.buildDepError "ghcjs-dom-jsffi"))
            ]
            else [
              (hsPkgs."ghcjs-dom-javascript" or (errorHandler.buildDepError "ghcjs-dom-javascript"))
            ]
          else [
            (hsPkgs."ghcjs-dom-jsaddle" or (errorHandler.buildDepError "ghcjs-dom-jsaddle"))
          ]);
        buildable = true;
      };
    };
  }