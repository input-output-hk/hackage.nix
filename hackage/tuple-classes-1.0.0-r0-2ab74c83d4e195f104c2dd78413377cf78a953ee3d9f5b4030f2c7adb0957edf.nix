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
      specVersion = "1.12";
      identifier = { name = "tuple-classes"; version = "1.0.0"; };
      license = "Apache-2.0";
      copyright = "2026 Steven Shuck";
      maintainer = "stevenjshuck@gmail.com";
      author = "Steven Shuck";
      homepage = "https://codeberg.org/sjshuck/tuple-classes#readme";
      url = "";
      synopsis = "Working with n-ary tuples and functions; strict tuples";
      description = "Please see the README on Codeberg at <https://codeberg.org/sjshuck/tuple-classes#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."assoc" or (errorHandler.buildDepError "assoc"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."strict" or (errorHandler.buildDepError "strict"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ];
        buildable = true;
      };
      tests = {
        "tuple-classes-test" = {
          depends = [
            (hsPkgs."assoc" or (errorHandler.buildDepError "assoc"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."strict" or (errorHandler.buildDepError "strict"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."tuple-classes" or (errorHandler.buildDepError "tuple-classes"))
          ];
          buildable = true;
        };
      };
    };
  }