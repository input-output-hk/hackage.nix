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
    flags = { buildexamples = false; };
    package = {
      specVersion = "1.14";
      identifier = { name = "accelerate-cublas"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://hub.darcs.net/thielema/accelerate-cublas/";
      url = "";
      synopsis = "Basic Linear Algebra using native CUBLAS library";
      description = "Basic Linear Algebra using native CUBLAS library.\nCurrently only support for the most basic batched matrix operations.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."accelerate-arithmetic" or (buildDepError "accelerate-arithmetic"))
          (hsPkgs."accelerate-utility" or (buildDepError "accelerate-utility"))
          (hsPkgs."accelerate-cuda" or (buildDepError "accelerate-cuda"))
          (hsPkgs."accelerate-io" or (buildDepError "accelerate-io"))
          (hsPkgs."accelerate" or (buildDepError "accelerate"))
          (hsPkgs."cublas" or (buildDepError "cublas"))
          (hsPkgs."cuda" or (buildDepError "cuda"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
          (hsPkgs."base" or (buildDepError "base"))
          ];
        buildable = true;
        };
      exes = {
        "accelerate-cublas-demo" = {
          depends = [
            (hsPkgs."accelerate-cublas" or (buildDepError "accelerate-cublas"))
            (hsPkgs."accelerate-cuda" or (buildDepError "accelerate-cuda"))
            (hsPkgs."accelerate-arithmetic" or (buildDepError "accelerate-arithmetic"))
            (hsPkgs."accelerate-utility" or (buildDepError "accelerate-utility"))
            (hsPkgs."accelerate" or (buildDepError "accelerate"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "newton-inverse" = {
          depends = [
            (hsPkgs."accelerate-cublas" or (buildDepError "accelerate-cublas"))
            (hsPkgs."accelerate-arithmetic" or (buildDepError "accelerate-arithmetic"))
            (hsPkgs."accelerate-utility" or (buildDepError "accelerate-utility"))
            (hsPkgs."accelerate-cuda" or (buildDepError "accelerate-cuda"))
            (hsPkgs."cuda" or (buildDepError "cuda"))
            (hsPkgs."accelerate" or (buildDepError "accelerate"))
            (hsPkgs."pooled-io" or (buildDepError "pooled-io"))
            (hsPkgs."timeit" or (buildDepError "timeit"))
            (hsPkgs."hmatrix" or (buildDepError "hmatrix"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = true;
          };
        };
      };
    }