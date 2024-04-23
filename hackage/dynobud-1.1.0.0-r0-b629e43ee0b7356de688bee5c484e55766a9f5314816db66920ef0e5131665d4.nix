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
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "dynobud"; version = "1.1.0.0"; };
      license = "LGPL-3.0-only";
      copyright = "(c) Greg Horn 2013-2015";
      maintainer = "gregmainland@gmail.com";
      author = "Greg Horn";
      homepage = "";
      url = "";
      synopsis = "your dynamic optimization buddy";
      description = "See readme at <http://www.github.com/ghorn/dynobud http://www.github.com/ghorn/dynobud>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."casadi-bindings-core" or (errorHandler.buildDepError "casadi-bindings-core"))
          (hsPkgs."casadi-bindings" or (errorHandler.buildDepError "casadi-bindings"))
          (hsPkgs."jacobi-roots" or (errorHandler.buildDepError "jacobi-roots"))
          (hsPkgs."spatial-math" or (errorHandler.buildDepError "spatial-math"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
          (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
          (hsPkgs."reflection" or (errorHandler.buildDepError "reflection"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
          (hsPkgs."glib" or (errorHandler.buildDepError "glib"))
          (hsPkgs."Chart-cairo" or (errorHandler.buildDepError "Chart-cairo"))
          (hsPkgs."cairo" or (errorHandler.buildDepError "cairo"))
          (hsPkgs."Chart" or (errorHandler.buildDepError "Chart"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          (hsPkgs."distributive" or (errorHandler.buildDepError "distributive"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
        ];
        buildable = true;
      };
      exes = {
        "multiple_shooting" = {
          depends = [
            (hsPkgs."dynobud" or (errorHandler.buildDepError "dynobud"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."casadi-bindings" or (errorHandler.buildDepError "casadi-bindings"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
            (hsPkgs."Chart" or (errorHandler.buildDepError "Chart"))
            (hsPkgs."Chart-gtk" or (errorHandler.buildDepError "Chart-gtk"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
            (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          ];
          buildable = if flags.examples then true else false;
        };
        "sofa-viz-2000" = {
          depends = [
            (hsPkgs."dynobud" or (errorHandler.buildDepError "dynobud"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."not-gloss" or (errorHandler.buildDepError "not-gloss"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."zeromq4-haskell" or (errorHandler.buildDepError "zeromq4-haskell"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = if flags.examples then true else false;
        };
        "sofa-expand-o-matic" = {
          depends = [
            (hsPkgs."dynobud" or (errorHandler.buildDepError "dynobud"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."casadi-bindings-core" or (errorHandler.buildDepError "casadi-bindings-core"))
            (hsPkgs."zeromq4-haskell" or (errorHandler.buildDepError "zeromq4-haskell"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = if flags.examples then true else false;
        };
        "homotopy" = {
          depends = [
            (hsPkgs."dynobud" or (errorHandler.buildDepError "dynobud"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."casadi-bindings" or (errorHandler.buildDepError "casadi-bindings"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = if flags.examples then true else false;
        };
        "vec" = {
          depends = [
            (hsPkgs."dynobud" or (errorHandler.buildDepError "dynobud"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = if flags.examples then true else false;
        };
        "ocpDslSpring" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."dynobud" or (errorHandler.buildDepError "dynobud"))
            (hsPkgs."casadi-bindings" or (errorHandler.buildDepError "casadi-bindings"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."zeromq4-haskell" or (errorHandler.buildDepError "zeromq4-haskell"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
          buildable = if flags.examples then true else false;
        };
        "ocpDslRocket" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."dynobud" or (errorHandler.buildDepError "dynobud"))
            (hsPkgs."casadi-bindings" or (errorHandler.buildDepError "casadi-bindings"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."zeromq4-haskell" or (errorHandler.buildDepError "zeromq4-haskell"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
          buildable = if flags.examples then true else false;
        };
        "nlpDsl" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."dynobud" or (errorHandler.buildDepError "dynobud"))
            (hsPkgs."casadi-bindings" or (errorHandler.buildDepError "casadi-bindings"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
          buildable = if flags.examples then true else false;
        };
        "basic" = {
          depends = [
            (hsPkgs."dynobud" or (errorHandler.buildDepError "dynobud"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = if flags.examples then true else false;
        };
        "basicJ" = {
          depends = [
            (hsPkgs."dynobud" or (errorHandler.buildDepError "dynobud"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."casadi-bindings" or (errorHandler.buildDepError "casadi-bindings"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = if flags.examples then true else false;
        };
        "daeColl" = {
          depends = [
            (hsPkgs."dynobud" or (errorHandler.buildDepError "dynobud"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = if flags.examples then true else false;
        };
        "glider" = {
          depends = [
            (hsPkgs."dynobud" or (errorHandler.buildDepError "dynobud"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."zeromq4-haskell" or (errorHandler.buildDepError "zeromq4-haskell"))
          ];
          buildable = if flags.examples then true else false;
        };
        "sailboat" = {
          depends = [
            (hsPkgs."dynobud" or (errorHandler.buildDepError "dynobud"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
            (hsPkgs."zeromq4-haskell" or (errorHandler.buildDepError "zeromq4-haskell"))
          ];
          buildable = if flags.examples then true else false;
        };
        "dynoplot" = {
          depends = [
            (hsPkgs."dynobud" or (errorHandler.buildDepError "dynobud"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."zeromq4-haskell" or (errorHandler.buildDepError "zeromq4-haskell"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
          ];
          buildable = if flags.examples then true else false;
        };
      };
      tests = {
        "unit-tests" = {
          depends = [
            (hsPkgs."dynobud" or (errorHandler.buildDepError "dynobud"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
            (hsPkgs."casadi-bindings" or (errorHandler.buildDepError "casadi-bindings"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = true;
        };
      };
    };
  }