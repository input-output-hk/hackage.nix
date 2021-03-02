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
      specVersion = "1.0";
      identifier = { name = "flow2dot"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Dmitry Astapov <dastapov@gmail.com>";
      author = "Dmitry Astapov <dastapov@gmail.com>";
      homepage = "http://adept.linux.kiev.ua/repos/flow2dot";
      url = "";
      synopsis = "Generates sequence diagrams from textual descriptions";
      description = "Generates sequence diagrams from textual descriptions with help of Graphviz graph drawing tool.\nCheck out <http://adept.linux.kiev.ua/repos/flow2dot/sample.flow> (source)\nand <http://adept.linux.kiev.ua/repos/flow2dot/sample.png> (output).";
      buildType = "Simple";
      };
    components = {
      exes = {
        "flow2dot" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            ];
          buildable = true;
          };
        };
      };
    }