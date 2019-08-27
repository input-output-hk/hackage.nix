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
    flags = { use_data_tree = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "sai-shape-syb"; version = "0.3.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Andrew Seniuk <rasfar@gmail.com>";
      author = "Andrew Seniuk";
      homepage = "http://www.fremissant.net/shape-syb";
      url = "";
      synopsis = "Obtain homogeneous values from arbitrary values, transforming or culling data";
      description = "This package provides SYB shape support: generic mapping to\nhomogeneous types, and related features.  Complements existing\nUniplate and TH shape libraries.\n\nGiven a value of arbitrary complexity (mutually recursive\nheterogeneous constructor application), you can obtain\na structure-preserving representation (homomorphism) as\na homogeneous type @Homo a@, parameterised by any choice type @a@.\n\nSee the project\n<http://www.fremissant.net/shape-syb homepage> for more information.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."syb" or (buildDepError "syb"))
          (hsPkgs."ghc" or (buildDepError "ghc"))
          (hsPkgs."ghc-syb-utils" or (buildDepError "ghc-syb-utils"))
          ] ++ (pkgs.lib).optional (flags.use_data_tree) (hsPkgs."containers" or (buildDepError "containers"));
        };
      tests = {
        "unit-tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."sai-shape-syb" or (buildDepError "sai-shape-syb"))
            (hsPkgs."syb" or (buildDepError "syb"))
            (hsPkgs."ghc" or (buildDepError "ghc"))
            (hsPkgs."ghc-syb-utils" or (buildDepError "ghc-syb-utils"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            ];
          };
        };
      };
    }