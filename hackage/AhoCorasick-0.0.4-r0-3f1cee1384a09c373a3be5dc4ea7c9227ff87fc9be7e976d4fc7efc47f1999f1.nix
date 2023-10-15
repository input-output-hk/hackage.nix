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
      specVersion = "3.0";
      identifier = { name = "AhoCorasick"; version = "0.0.4"; };
      license = "BSD-3-Clause";
      copyright = "Sergey S Lymar (c) 2012";
      maintainer = "Karl Ostmo <kostmo@gmail.com>";
      author = "Sergey S Lymar <sergey.lymar@gmail.com>";
      homepage = "http://github.com/kostmo/AhoCorasick";
      url = "";
      synopsis = "Aho-Corasick string matching algorithm";
      description = "Aho-Corasick string matching algorithm.\n\nSee usage examples in \"Text.AhoCorasick\".";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      tests = {
        "unit-tests" = {
          depends = [
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."AhoCorasick" or (errorHandler.buildDepError "AhoCorasick"))
            ];
          buildable = true;
          };
        };
      };
    }