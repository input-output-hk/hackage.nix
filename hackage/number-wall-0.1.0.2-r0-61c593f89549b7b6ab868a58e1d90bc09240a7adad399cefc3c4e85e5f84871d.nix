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
      specVersion = "2.4";
      identifier = { name = "number-wall"; version = "0.1.0.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "ombspring@gmail.com";
      author = "Owen Bechtel";
      homepage = "https://github.com/UnaryPlus/number-wall";
      url = "";
      synopsis = "Create number walls and save them as images";
      description = "A \"number wall\" is an infinite grid associated to some (bi-directional) sequence.\nThe \"numbers\" in the grid are usually either integers, or integers modulo some prime.\nNumber walls can be defined in terms of determinants, but can also be calculated\nusing a recursive algorithm.\n\nHere are some cool images created using the functions in this package:\n\n![number wall image collage](src/collage.png)\n\nSee [this video](https://www.youtube.com/watch?v=NO1_-qptr6c) for more\ninformation and fun facts.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."memoize" or (errorHandler.buildDepError "memoize"))
          (hsPkgs."mod" or (errorHandler.buildDepError "mod"))
          (hsPkgs."semirings" or (errorHandler.buildDepError "semirings"))
          (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."number-wall" or (errorHandler.buildDepError "number-wall"))
          ];
          buildable = true;
        };
      };
    };
  }