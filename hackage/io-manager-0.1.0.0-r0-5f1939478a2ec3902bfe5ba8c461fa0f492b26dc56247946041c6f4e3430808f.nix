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
      specVersion = "1.8";
      identifier = { name = "io-manager"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mihai.maruseac@gmail.com";
      author = "Mihai Maruseac";
      homepage = "";
      url = "";
      synopsis = "Skeleton library around the IO monad.";
      description = "A skeleton library to help learners of Haskell\nconcentrate on the pure-functional aspect and\nlet the IO be handled by the library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      exes = {
        "SimpleEchoExample" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."io-manager" or (errorHandler.buildDepError "io-manager"))
            ];
          buildable = true;
          };
        };
      };
    }