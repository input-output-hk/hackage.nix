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
      specVersion = "1.10";
      identifier = { name = "sibe"; version = "0.1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "2016 Mahdi Dibaiee";
      maintainer = "mdibaiee@aol.com";
      author = "Mahdi Dibaiee";
      homepage = "https://github.com/mdibaiee/sibe";
      url = "";
      synopsis = "Initial project template from stack";
      description = "Haskell Machine Learning";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."hmatrix" or (buildDepError "hmatrix"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."regex-base" or (buildDepError "regex-base"))
          (hsPkgs."regex-pcre" or (buildDepError "regex-pcre"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."stemmer" or (buildDepError "stemmer"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."random-shuffle" or (buildDepError "random-shuffle"))
          (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
          (hsPkgs."Chart" or (buildDepError "Chart"))
          (hsPkgs."Chart-cairo" or (buildDepError "Chart-cairo"))
          (hsPkgs."lens" or (buildDepError "lens"))
          ];
        buildable = true;
        };
      exes = {
        "example-xor" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."sibe" or (buildDepError "sibe"))
            (hsPkgs."hmatrix" or (buildDepError "hmatrix"))
            (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
            ];
          buildable = true;
          };
        "example-word2vec" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."sibe" or (buildDepError "sibe"))
            (hsPkgs."hmatrix" or (buildDepError "hmatrix"))
            (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."random" or (buildDepError "random"))
            ];
          buildable = true;
          };
        "example-424" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."sibe" or (buildDepError "sibe"))
            (hsPkgs."hmatrix" or (buildDepError "hmatrix"))
            (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
            ];
          buildable = true;
          };
        "example-notmnist" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."sibe" or (buildDepError "sibe"))
            (hsPkgs."hmatrix" or (buildDepError "hmatrix"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."JuicyPixels" or (buildDepError "JuicyPixels"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."random-shuffle" or (buildDepError "random-shuffle"))
            (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
            (hsPkgs."Chart" or (buildDepError "Chart"))
            (hsPkgs."Chart-cairo" or (buildDepError "Chart-cairo"))
            ];
          buildable = true;
          };
        "example-naivebayes-doc-classifier" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."sibe" or (buildDepError "sibe"))
            (hsPkgs."hmatrix" or (buildDepError "hmatrix"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."split" or (buildDepError "split"))
            ];
          buildable = true;
          };
        };
      tests = {
        "sibe-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."sibe" or (buildDepError "sibe"))
            (hsPkgs."hmatrix" or (buildDepError "hmatrix"))
            ];
          buildable = true;
          };
        };
      };
    }