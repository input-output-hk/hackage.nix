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
      identifier = { name = "reflex-sdl2"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "Copyright: (c) 2017 Schell Scivally";
      maintainer = "schell@takt.com";
      author = "Schell Scivally";
      homepage = "https://github.com/schell/reflex-sdl2#readme";
      url = "";
      synopsis = "SDL2 and reflex FRP";
      description = "A minimal host for sdl2 based reflex apps.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."dependent-sum" or (errorHandler.buildDepError "dependent-sum"))
          (hsPkgs."exception-transformers" or (errorHandler.buildDepError "exception-transformers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."reflex" or (errorHandler.buildDepError "reflex"))
          (hsPkgs."ref-tf" or (errorHandler.buildDepError "ref-tf"))
          (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          ];
        buildable = true;
        };
      exes = {
        "reflex-sdl2-exe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."reflex-sdl2" or (errorHandler.buildDepError "reflex-sdl2"))
            ];
          buildable = true;
          };
        };
      };
    }