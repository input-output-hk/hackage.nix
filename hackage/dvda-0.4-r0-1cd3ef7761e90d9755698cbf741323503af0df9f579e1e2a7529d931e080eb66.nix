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
    flags = { stresstest = false; test = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "dvda"; version = "0.4"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2011 - 2012 Greg Horn\n(c) 2009 Andy Gill";
      maintainer = "gregmainland@gmail.edu";
      author = "Greg Horn";
      homepage = "";
      url = "";
      synopsis = "Efficient automatic differentiation and code generation";
      description = "dvda == DVDA Verifiably Differentiates Algorithmically\n\nThis library provides a symbolic scalar type `Dvda.Expr` which is\nmanipulated mathematically through its Num\\/Fractional\\/Floating instances.\n\nAutomatic differentiation can be performed with `Dvda.AD`. Expressions can be turned into\ncomputational graphs (@FunGraph@s) using toFunGraph. This uses unsafe reification for performance reasons,\nand explicit common subexpression elimination using hashing can be performed using `Dvda.CSE`\n\n@FunGraph@s can be converted to C code and MATLAB mex functions. In the future there will be JIT compilation\nso you can call these functions efficiently from Haskell.\n\nPretty graphviz plots!\n\nTo get started check out the source for `Dvda.Examples`";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."hashtables" or (buildDepError "hashtables"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."dvda" or (buildDepError "dvda"))
            (hsPkgs."file-location" or (buildDepError "file-location"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."hashtables" or (buildDepError "hashtables"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."graphviz" or (buildDepError "graphviz"))
            (hsPkgs."fgl" or (buildDepError "fgl"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."ad" or (buildDepError "ad"))
            (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            ];
          };
        };
      };
    }