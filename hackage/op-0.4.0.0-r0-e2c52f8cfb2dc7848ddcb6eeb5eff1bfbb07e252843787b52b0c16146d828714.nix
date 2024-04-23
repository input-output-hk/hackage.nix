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
      identifier = { name = "op"; version = "0.4.0.0"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "infinity0@pwned.gg";
      author = "Ximin Luo";
      homepage = "https://github.com/infinity0/hs-op";
      url = "";
      synopsis = "Common operators encouraging large-scale easy reading";
      description = "Op provides operators for writing easier-to-read Haskell. It provides new\noperators with a consistent \"look and feel\" including fixity direction and\nprecedence, resulting in easier- and quicker-to-read code especially when used\non long chains of expressions.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
          buildable = true;
        };
      };
    };
  }