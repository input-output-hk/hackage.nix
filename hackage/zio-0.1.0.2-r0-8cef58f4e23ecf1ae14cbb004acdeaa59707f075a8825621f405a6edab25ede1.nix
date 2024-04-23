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
      specVersion = "1.18";
      identifier = { name = "zio"; version = "0.1.0.2"; };
      license = "MPL-2.0";
      copyright = "2020 Brandon Elam Barker";
      maintainer = "brandon.barker@gmail.com";
      author = "Brandon Elam Barker";
      homepage = "https://github.com/bbarker/haskell-zio#readme";
      url = "";
      synopsis = "App-centric Monad-transformer based on Scala ZIO (UIO + ReaderT + ExceptT).";
      description = "Please see the README on GitHub at <https://github.com/bbarker/haskell-zio#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unexceptionalio" or (errorHandler.buildDepError "unexceptionalio"))
          (hsPkgs."unexceptionalio-trans" or (errorHandler.buildDepError "unexceptionalio-trans"))
        ];
        buildable = true;
      };
      tests = {
        "zio-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."unexceptionalio" or (errorHandler.buildDepError "unexceptionalio"))
            (hsPkgs."unexceptionalio-trans" or (errorHandler.buildDepError "unexceptionalio-trans"))
            (hsPkgs."zio" or (errorHandler.buildDepError "zio"))
          ];
          buildable = true;
        };
      };
    };
  }