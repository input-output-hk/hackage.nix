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
      identifier = { name = "rose"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "2020 chessai";
      maintainer = "chessai1996@gmail.com";
      author = "chessai";
      homepage = "https://github.com/chessai/rose";
      url = "";
      synopsis = "rose trees";
      description = "<https://en.wikipedia.org/wiki/Rose_tree Rose Trees> are trees with\nan unbounded number of branches per node. Each node contains a value\nand zero or more subtrees.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."comonad" or (errorHandler.buildDepError "comonad"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          (hsPkgs."indexed-traversable" or (errorHandler.buildDepError "indexed-traversable"))
          ];
        buildable = true;
        };
      tests = {
        "laws" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-classes" or (errorHandler.buildDepError "quickcheck-classes"))
            (hsPkgs."rose" or (errorHandler.buildDepError "rose"))
            ];
          buildable = true;
          };
        };
      };
    }