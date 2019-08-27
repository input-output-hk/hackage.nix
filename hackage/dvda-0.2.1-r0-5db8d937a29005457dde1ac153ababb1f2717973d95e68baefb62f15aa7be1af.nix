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
      identifier = { name = "dvda"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "gregmainland@gmail.edu";
      author = "Greg Horn";
      homepage = "";
      url = "";
      synopsis = "Efficient automatic differentiation";
      description = "dvda == DVDA Verifiably Differentiates Algorithmically\n\nThis library provides a symbolic type `Dvda.Expr` which is\nmanipulated mathematically through its Num\\/Fractional\\/Floating instances.\nExpr can be a scalar, vector, or matrix. Binary operations (adding\\/multiplying\\/etc)\nare all elementwise.\n\nMatrix/vector/scalar safety is enforced at compile time\n\nEfficient derivatives can be computed. Internally reverse automatic differentiation\nis performed including efficient common subexpression elimination.\n\nFunction graphs can be JIT compiled into efficient functions using \"buildHSFunction\".\nThis is the intended way to use this library.\n\nPretty graphviz plots!\n\nIf the runtime JIT stuff works in terminal ghci but not emacs haskell-mode, you may need to add\n`(setenv \"PATH\" (concatenate 'string (getenv \"PATH\") \":/usr/local/bin\"))` to your .emacs file\n\nTo get started look in `Dvda.Examples` or CompileTest.hs in the github repo";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."repa" or (buildDepError "repa"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."graphviz" or (buildDepError "graphviz"))
          (hsPkgs."fgl" or (buildDepError "fgl"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."hmatrix" or (buildDepError "hmatrix"))
          ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."ad" or (buildDepError "ad"))
            (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            ];
          };
        };
      };
    }