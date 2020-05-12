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
      identifier = { name = "treap"; version = "0.0.0.0"; };
      license = "MPL-2.0";
      copyright = "2019 Dmitrii Kovanikov";
      maintainer = "kovanikov@gmail.com";
      author = "Dmitrii Kovanikov";
      homepage = "https://github.com/chshersh/treap";
      url = "";
      synopsis = "Efficient implementation of the implicit treap data structure";
      description = "Efficient implementation of the implicit treap data structure.\nUse this data structure if you want dynamic arrays with fast operations on segments.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."mersenne-random-pure64" or (errorHandler.buildDepError "mersenne-random-pure64"))
          ];
        buildable = true;
        };
      tests = {
        "treap-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."treap" or (errorHandler.buildDepError "treap"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-core" or (errorHandler.buildDepError "hspec-core"))
            ];
          buildable = true;
          };
        "treap-doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."Glob" or (errorHandler.buildDepError "Glob"))
            ];
          buildable = true;
          };
        };
      };
    }