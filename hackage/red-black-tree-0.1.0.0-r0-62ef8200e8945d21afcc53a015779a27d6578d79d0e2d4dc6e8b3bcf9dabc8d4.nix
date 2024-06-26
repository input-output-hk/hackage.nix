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
      identifier = { name = "red-black-tree"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Gabriel Aumala";
      maintainer = "gabriel@criptext.com";
      author = "Gabriel Aumala";
      homepage = "https://github.com/GAumala/red-black-tree";
      url = "";
      synopsis = "Red Black Trees implemented in Haskell";
      description = "[Red Black Tree](https://en.wikipedia.org/wiki/Red%E2%80%93black_tree) data\nstructure implemented in Haskell.\nThe goal of this project is to provide an efficient generic structure that can\ninsert and find elements in O(log(n)) time.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "red-black-tree-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."red-black-tree" or (errorHandler.buildDepError "red-black-tree"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
      };
    };
  }