let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "dynobud"; version = "1.9.1.0"; };
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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."casadi-bindings-core" or (buildDepError "casadi-bindings-core"))
          (hsPkgs."casadi-bindings" or (buildDepError "casadi-bindings"))
          (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
          (hsPkgs."jacobi-roots" or (buildDepError "jacobi-roots"))
          (hsPkgs."spatial-math" or (buildDepError "spatial-math"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."vector-binary-instances" or (buildDepError "vector-binary-instances"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."hmatrix" or (buildDepError "hmatrix"))
          (hsPkgs."hmatrix-gsl" or (buildDepError "hmatrix-gsl"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."linear" or (buildDepError "linear"))
          (hsPkgs."reflection" or (buildDepError "reflection"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."cereal" or (buildDepError "cereal"))
          (hsPkgs."distributive" or (buildDepError "distributive"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."Plot-ho-matic" or (buildDepError "Plot-ho-matic"))
          (hsPkgs."generic-accessors" or (buildDepError "generic-accessors"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."mwc-random" or (buildDepError "mwc-random"))
          ];
        buildable = true;
        };
      exes = {
        "nlp-solver" = {
          depends = [
            (hsPkgs."dynobud" or (buildDepError "dynobud"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."casadi-bindings" or (buildDepError "casadi-bindings"))
            ];
          buildable = if flags.examples then true else false;
          };
        "toy-ocp" = {
          depends = [
            (hsPkgs."dynobud" or (buildDepError "dynobud"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = if flags.examples then true else false;
          };
        "multiple_shooting" = {
          depends = [
            (hsPkgs."dynobud" or (buildDepError "dynobud"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."casadi-bindings" or (buildDepError "casadi-bindings"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."linear" or (buildDepError "linear"))
            (hsPkgs."Chart" or (buildDepError "Chart"))
            (hsPkgs."Chart-gtk" or (buildDepError "Chart-gtk"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."colour" or (buildDepError "colour"))
            (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
            ];
          buildable = if flags.examples then true else false;
          };
        "sofa-viz-2000" = {
          depends = [
            (hsPkgs."dynobud" or (buildDepError "dynobud"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."not-gloss" or (buildDepError "not-gloss"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            (hsPkgs."linear" or (buildDepError "linear"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."zeromq4-haskell" or (buildDepError "zeromq4-haskell"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          buildable = if flags.examples then true else false;
          };
        "sofa-expand-o-matic" = {
          depends = [
            (hsPkgs."dynobud" or (buildDepError "dynobud"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."casadi-bindings-core" or (buildDepError "casadi-bindings-core"))
            (hsPkgs."zeromq4-haskell" or (buildDepError "zeromq4-haskell"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            (hsPkgs."linear" or (buildDepError "linear"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = if flags.examples then true else false;
          };
        "homotopy" = {
          depends = [
            (hsPkgs."dynobud" or (buildDepError "dynobud"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."casadi-bindings" or (buildDepError "casadi-bindings"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = if flags.examples then true else false;
          };
        "vec" = {
          depends = [
            (hsPkgs."dynobud" or (buildDepError "dynobud"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = if flags.examples then true else false;
          };
        "parallel-map" = {
          depends = [
            (hsPkgs."dynobud" or (buildDepError "dynobud"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."linear" or (buildDepError "linear"))
            (hsPkgs."casadi-bindings" or (buildDepError "casadi-bindings"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = if flags.examples then true else false;
          };
        "spring" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."dynobud" or (buildDepError "dynobud"))
            (hsPkgs."casadi-bindings" or (buildDepError "casadi-bindings"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."generic-accessors" or (buildDepError "generic-accessors"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."zeromq4-haskell" or (buildDepError "zeromq4-haskell"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            ];
          buildable = if flags.examples then true else false;
          };
        "rocket" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."dynobud" or (buildDepError "dynobud"))
            (hsPkgs."casadi-bindings" or (buildDepError "casadi-bindings"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."generic-accessors" or (buildDepError "generic-accessors"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."zeromq4-haskell" or (buildDepError "zeromq4-haskell"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            ];
          buildable = if flags.examples then true else false;
          };
        "nlpDsl" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."dynobud" or (buildDepError "dynobud"))
            (hsPkgs."casadi-bindings" or (buildDepError "casadi-bindings"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."linear" or (buildDepError "linear"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            ];
          buildable = if flags.examples then true else false;
          };
        "easy-nlp" = {
          depends = [
            (hsPkgs."dynobud" or (buildDepError "dynobud"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = if flags.examples then true else false;
          };
        "basic-nlp" = {
          depends = [
            (hsPkgs."dynobud" or (buildDepError "dynobud"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."casadi-bindings" or (buildDepError "casadi-bindings"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = if flags.examples then true else false;
          };
        "beginner-qp" = {
          depends = [
            (hsPkgs."dynobud" or (buildDepError "dynobud"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = if flags.examples then true else false;
          };
        "dae-pendulum" = {
          depends = [
            (hsPkgs."dynobud" or (buildDepError "dynobud"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."generic-accessors" or (buildDepError "generic-accessors"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."zeromq4-haskell" or (buildDepError "zeromq4-haskell"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          buildable = if flags.examples then true else false;
          };
        "glider" = {
          depends = [
            (hsPkgs."dynobud" or (buildDepError "dynobud"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."linear" or (buildDepError "linear"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."generic-accessors" or (buildDepError "generic-accessors"))
            (hsPkgs."zeromq4-haskell" or (buildDepError "zeromq4-haskell"))
            ];
          buildable = if flags.examples then true else false;
          };
        "sailboat" = {
          depends = [
            (hsPkgs."dynobud" or (buildDepError "dynobud"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."linear" or (buildDepError "linear"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."generic-accessors" or (buildDepError "generic-accessors"))
            (hsPkgs."zeromq4-haskell" or (buildDepError "zeromq4-haskell"))
            ];
          buildable = if flags.examples then true else false;
          };
        "dynoplot" = {
          depends = [
            (hsPkgs."dynobud" or (buildDepError "dynobud"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."zeromq4-haskell" or (buildDepError "zeromq4-haskell"))
            (hsPkgs."Plot-ho-matic" or (buildDepError "Plot-ho-matic"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            ];
          buildable = if flags.examples then true else false;
          };
        "quadrature-test" = {
          depends = [
            (hsPkgs."dynobud" or (buildDepError "dynobud"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."generic-accessors" or (buildDepError "generic-accessors"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."zeromq4-haskell" or (buildDepError "zeromq4-haskell"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          buildable = if flags.examples then true else false;
          };
        };
      tests = {
        "unit-tests" = {
          depends = [
            (hsPkgs."dynobud" or (buildDepError "dynobud"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."linear" or (buildDepError "linear"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            (hsPkgs."casadi-bindings" or (buildDepError "casadi-bindings"))
            (hsPkgs."hmatrix" or (buildDepError "hmatrix"))
            (hsPkgs."hmatrix-gsl" or (buildDepError "hmatrix-gsl"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = true;
          };
        "doctests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."doctest" or (buildDepError "doctest"))
            ];
          buildable = true;
          };
        };
      };
    }