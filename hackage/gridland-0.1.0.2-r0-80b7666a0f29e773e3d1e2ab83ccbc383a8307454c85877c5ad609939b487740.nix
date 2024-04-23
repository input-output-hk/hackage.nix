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
    flags = { demo = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "gridland"; version = "0.1.0.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "https://github.com/jxv";
      author = "Joe Vargas";
      homepage = "";
      url = "";
      synopsis = "Grid-based multimedia engine";
      description = "Learn Haskell by drawing sprites and playing music and sound effects.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."SDL" or (errorHandler.buildDepError "SDL"))
          (hsPkgs."SDL-image" or (errorHandler.buildDepError "SDL-image"))
          (hsPkgs."SDL-mixer" or (errorHandler.buildDepError "SDL-mixer"))
          (hsPkgs."SDL-gfx" or (errorHandler.buildDepError "SDL-gfx"))
          (hsPkgs."astar" or (errorHandler.buildDepError "astar"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."tuple" or (errorHandler.buildDepError "tuple"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."grid" or (errorHandler.buildDepError "grid"))
          (hsPkgs."htiled" or (errorHandler.buildDepError "htiled"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
        ];
        buildable = true;
      };
      exes = {
        "demo" = {
          depends = pkgs.lib.optionals (flags.demo) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gridland" or (errorHandler.buildDepError "gridland"))
          ];
          buildable = if flags.demo then true else false;
        };
      };
    };
  }