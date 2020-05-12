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
      identifier = { name = "java-poker"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "toby.net.info+git@gmail.com";
      author = "tobynet";
      homepage = "https://github.com/tobynet/java-poker#readme";
      url = "";
      synopsis = "The etude of the Haskell programming";
      description = "poker like a JAVA";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."random-shuffle" or (errorHandler.buildDepError "random-shuffle"))
          ];
        buildable = true;
        };
      exes = {
        "java-poker-simple" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."java-poker" or (errorHandler.buildDepError "java-poker"))
            ];
          buildable = true;
          };
        };
      };
    }