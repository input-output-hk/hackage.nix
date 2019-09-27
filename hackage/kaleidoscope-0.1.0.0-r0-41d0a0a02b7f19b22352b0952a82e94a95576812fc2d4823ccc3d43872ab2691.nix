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
    flags = { tutorial = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "kaleidoscope"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2012 Stephen Diehl";
      maintainer = "stephen.m.diehl@gmail.com";
      author = "Stephen Diehl";
      homepage = "https://github.com/sdiehl/kaleidoscope";
      url = "";
      synopsis = "Haskell Kaleidoscope tutorial";
      description = "Port of the Kaleidoscope tutorial for Haskell and LLVM";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."haskeline" or (buildDepError "haskeline"))
          (hsPkgs."llvm-general" or (buildDepError "llvm-general"))
          (hsPkgs."llvm-general-pure" or (buildDepError "llvm-general-pure"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ];
        buildable = true;
        };
      exes = {
        "chapter2" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."haskeline" or (buildDepError "haskeline"))
            (hsPkgs."llvm-general" or (buildDepError "llvm-general"))
            (hsPkgs."llvm-general-pure" or (buildDepError "llvm-general-pure"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          buildable = true;
          };
        "chapter3" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."haskeline" or (buildDepError "haskeline"))
            (hsPkgs."llvm-general" or (buildDepError "llvm-general"))
            (hsPkgs."llvm-general-pure" or (buildDepError "llvm-general-pure"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."containers" or (buildDepError "containers"))
            ];
          buildable = true;
          };
        "chapter4" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."haskeline" or (buildDepError "haskeline"))
            (hsPkgs."llvm-general" or (buildDepError "llvm-general"))
            (hsPkgs."llvm-general-pure" or (buildDepError "llvm-general-pure"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          buildable = true;
          };
        "chapter5" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."haskeline" or (buildDepError "haskeline"))
            (hsPkgs."llvm-general" or (buildDepError "llvm-general"))
            (hsPkgs."llvm-general-pure" or (buildDepError "llvm-general-pure"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          buildable = true;
          };
        "chapter6" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."haskeline" or (buildDepError "haskeline"))
            (hsPkgs."llvm-general" or (buildDepError "llvm-general"))
            (hsPkgs."llvm-general-pure" or (buildDepError "llvm-general-pure"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          buildable = true;
          };
        "chapter7" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."haskeline" or (buildDepError "haskeline"))
            (hsPkgs."llvm-general" or (buildDepError "llvm-general"))
            (hsPkgs."llvm-general-pure" or (buildDepError "llvm-general-pure"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }