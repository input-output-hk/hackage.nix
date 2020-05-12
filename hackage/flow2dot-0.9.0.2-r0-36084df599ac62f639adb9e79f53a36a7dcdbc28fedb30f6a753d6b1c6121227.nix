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
      specVersion = "1.6";
      identifier = { name = "flow2dot"; version = "0.9.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Dmitry Astapov <dastapov@gmail.com>";
      author = "Dmitry Astapov <dastapov@gmail.com>";
      homepage = "http://adept.linux.kiev.ua:8080/repos/flow2dot";
      url = "";
      synopsis = "Library and binary to generate sequence/flow diagrams from plain text source";
      description = "Generates sequence diagrams from textual descriptions with help of Graphviz graph drawing tool.\nCheck out <http://adept.linux.kiev.ua:8080/repos/flow2dot/sample.flow> (source)\nand <http://adept.linux.kiev.ua:8080/repos/flow2dot/sample.png> (output).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.2.1") (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"));
        buildable = true;
        };
      exes = { "flow2dot" = { buildable = true; }; };
      };
    }