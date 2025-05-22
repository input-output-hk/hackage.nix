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
      identifier = { name = "int-like"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2022 Eric Conlon";
      maintainer = "ejconlon@gmail.com";
      author = "Eric Conlon";
      homepage = "https://github.com/ejconlon/int-like#readme";
      url = "";
      synopsis = "Newtype wrappers over IntSet and IntMap";
      description = "Please see the README on GitHub at <https://github.com/ejconlon/int-like#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."algebraic-graphs" or (errorHandler.buildDepError "algebraic-graphs"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
        ];
        buildable = true;
      };
    };
  }