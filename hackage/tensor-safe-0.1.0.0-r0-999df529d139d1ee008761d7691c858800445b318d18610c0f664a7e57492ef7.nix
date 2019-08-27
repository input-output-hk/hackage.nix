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
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "tensor-safe"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Leonardo Pineyro";
      maintainer = "leopiney@gmail.com";
      author = "Leonardo Pineyro";
      homepage = "https://github.com/leopiney/tensor-safe#readme";
      url = "";
      synopsis = "Create valid deep neural network architectures";
      description = "TensorSafe provides a very simple API to create deep neural networks structures which are validated using Dependent Types. Given a list of Layers and an initial Shape, TensorSafe is able to check and corroborate the structure of the network. Also, it's possible to extract the definition and compile it to a target language like Python and JavaScript.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."casing" or (buildDepError "casing"))
          (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."extra" or (buildDepError "extra"))
          (hsPkgs."formatting" or (buildDepError "formatting"))
          (hsPkgs."ghc-typelits-extra" or (buildDepError "ghc-typelits-extra"))
          (hsPkgs."hint" or (buildDepError "hint"))
          (hsPkgs."singletons" or (buildDepError "singletons"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."vector-sized" or (buildDepError "vector-sized"))
          ];
        };
      exes = {
        "tensor-safe" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."casing" or (buildDepError "casing"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."extra" or (buildDepError "extra"))
            (hsPkgs."formatting" or (buildDepError "formatting"))
            (hsPkgs."ghc-typelits-extra" or (buildDepError "ghc-typelits-extra"))
            (hsPkgs."hint" or (buildDepError "hint"))
            (hsPkgs."singletons" or (buildDepError "singletons"))
            (hsPkgs."tensor-safe" or (buildDepError "tensor-safe"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."vector-sized" or (buildDepError "vector-sized"))
            ];
          };
        };
      };
    }