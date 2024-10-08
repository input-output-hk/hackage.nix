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
      identifier = { name = "ac-machine"; version = "0.2.0.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Yuta Taniguchi <yuta.taniguchi.y.t@gmail.com>";
      author = "Yuta Taniguchi <yuta.taniguchi.y.t@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Aho-Corasick string matching algorithm in Haskell";
      description = "An implementation of the Aho-Corasick string matching algorithm written in Haskell.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
    };
  }