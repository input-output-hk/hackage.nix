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
    flags = { development = false; gpu = true; };
    package = {
      specVersion = "2.0";
      identifier = {
        name = "accelerate-kullback-liebler";
        version = "0.1.0.0";
        };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2019 Vanessa McHale";
      maintainer = "vamchale@gmail.com";
      author = "Vanessa McHale";
      homepage = "";
      url = "";
      synopsis = "Kullback-Liebler divergence";
      description = "Kullback-Liebler divergence using accelerate";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."accelerate" or (buildDepError "accelerate"))
          ];
        buildable = true;
        };
      sublibs = {
        "accelerate-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mwc-random-accelerate" or (buildDepError "mwc-random-accelerate"))
            (hsPkgs."accelerate" or (buildDepError "accelerate"))
            ];
          buildable = true;
          };
        };
      tests = {
        "accelerate-kullback-liebler-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."accelerate-kullback-liebler" or (buildDepError "accelerate-kullback-liebler"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."composition-prelude" or (buildDepError "composition-prelude"))
            (hsPkgs."tasty-hedgehog" or (buildDepError "tasty-hedgehog"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."accelerate-llvm-native" or (buildDepError "accelerate-llvm-native"))
            (hsPkgs."accelerate-test" or (buildDepError "accelerate-test"))
            (hsPkgs."accelerate" or (buildDepError "accelerate"))
            ] ++ (pkgs.lib).optional (flags.gpu) (hsPkgs."accelerate-llvm-ptx" or (buildDepError "accelerate-llvm-ptx"));
          buildable = true;
          };
        };
      benchmarks = {
        "accelerate-kullback-liebler-bench" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."accelerate-kullback-liebler" or (buildDepError "accelerate-kullback-liebler"))
            (hsPkgs."accelerate-test" or (buildDepError "accelerate-test"))
            (hsPkgs."accelerate-llvm-native" or (buildDepError "accelerate-llvm-native"))
            (hsPkgs."accelerate" or (buildDepError "accelerate"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            ] ++ (pkgs.lib).optional (flags.gpu) (hsPkgs."accelerate-llvm-ptx" or (buildDepError "accelerate-llvm-ptx"));
          build-tools = [
            (hsPkgs.buildPackages.cpphs or (pkgs.buildPackages.cpphs or (buildToolDepError "cpphs")))
            ];
          buildable = true;
          };
        };
      };
    }