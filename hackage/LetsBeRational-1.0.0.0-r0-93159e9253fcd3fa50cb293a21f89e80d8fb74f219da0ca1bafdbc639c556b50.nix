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
      specVersion = "2.2";
      identifier = { name = "LetsBeRational"; version = "1.0.0.0"; };
      license = "MIT";
      copyright = "2021 Ghais Issa";
      maintainer = "Ghais Issa <0x47@0x49.dev>";
      author = "Ghais Issa";
      homepage = "https://github.com/ghais/LetsBeRational";
      url = "";
      synopsis = "European option implied vol calculation";
      description = "Haskell binding for Jaekel's \"Let's be Rational\" implied volatility calculation";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }