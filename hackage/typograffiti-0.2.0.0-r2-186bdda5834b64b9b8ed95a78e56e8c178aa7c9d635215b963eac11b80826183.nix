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
      specVersion = "1.12";
      identifier = { name = "typograffiti"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Schell Scivally & others";
      maintainer = "alcinnz@argonaut-constellation.org";
      author = "Schell Scivally & Adrian Cochrane";
      homepage = "https://github.com/schell/typograffiti#readme";
      url = "";
      synopsis = "Just let me draw nice text already";
      description = "This is a text rendering library that uses OpenGL and freetype2 to render TTF font strings quickly. It is fast enough to render large chunks of text in real time. This library exists because text rendering is one of the biggest hurdles in Haskell graphics programming - and it shouldn't be!\nTypograffiti includes an MTL style typeclass and a default monad transformer. It does not assume you are using any specific windowing solution. It does assume you are using OpenGL 3.3+.\nPull requests are very welcome :)\nSee https://github.com/schell/typograffiti/blob/master/app/Main.hs for an example.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."freetype2" or (errorHandler.buildDepError "freetype2"))
          (hsPkgs."gl" or (errorHandler.buildDepError "gl"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."harfbuzz-pure" or (errorHandler.buildDepError "harfbuzz-pure"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        buildable = true;
        };
      exes = {
        "typograffiti" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."typograffiti" or (errorHandler.buildDepError "typograffiti"))
            (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."gl" or (errorHandler.buildDepError "gl"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      };
    }