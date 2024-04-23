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
    flags = {
      examples = false;
      gles3 = false;
      gl2 = false;
      stb_truetype = false;
    };
    package = {
      specVersion = "1.10";
      identifier = { name = "nanovg"; version = "0.8.1.0"; };
      license = "ISC";
      copyright = "2016 Moritz Kiefer";
      maintainer = "moritz.kiefer@purelyfunctional.org";
      author = "Moritz Kiefer";
      homepage = "https://github.com/cocreature/nanovg-hs";
      url = "";
      synopsis = "Haskell bindings for nanovg";
      description = "Raw bindings to the OpenGL vector graphics library NanoVG";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        libs = if system.isWindows
          then [
            (pkgs."freeglut" or (errorHandler.sysDepError "freeglut"))
            (pkgs."glew32" or (errorHandler.sysDepError "glew32"))
          ]
          else if system.isOsx
            then [ (pkgs."GLEW" or (errorHandler.sysDepError "GLEW")) ]
            else [
              (pkgs."GLU" or (errorHandler.sysDepError "GLU"))
              (pkgs."GL" or (errorHandler.sysDepError "GL"))
              (pkgs."m" or (errorHandler.sysDepError "m"))
              (pkgs."GLEW" or (errorHandler.sysDepError "GLEW"))
              (pkgs."X11" or (errorHandler.sysDepError "X11"))
            ];
        frameworks = pkgs.lib.optionals (!system.isWindows) (pkgs.lib.optional (system.isOsx) (pkgs."OpenGL" or (errorHandler.sysDepError "OpenGL")));
        pkgconfig = if flags.stb_truetype
          then [ (pkgconfPkgs."glew" or (errorHandler.pkgConfDepError "glew")) ]
          else [
            (pkgconfPkgs."glew" or (errorHandler.pkgConfDepError "glew"))
            (pkgconfPkgs."freetype2" or (errorHandler.pkgConfDepError "freetype2"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs.components.exes.c2hs or (pkgs.buildPackages.c2hs or (errorHandler.buildToolDepError "c2hs:c2hs")))
        ];
        buildable = true;
      };
      exes = {
        "example00" = {
          depends = pkgs.lib.optionals (flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."gl" or (errorHandler.buildDepError "gl"))
            (hsPkgs."GLFW-b" or (errorHandler.buildDepError "GLFW-b"))
            (hsPkgs."monad-loops" or (errorHandler.buildDepError "monad-loops"))
            (hsPkgs."nanovg" or (errorHandler.buildDepError "nanovg"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = if flags.examples then true else false;
        };
      };
      tests = {
        "nanovg-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."inline-c" or (errorHandler.buildDepError "inline-c"))
            (hsPkgs."nanovg" or (errorHandler.buildDepError "nanovg"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
      };
    };
  }