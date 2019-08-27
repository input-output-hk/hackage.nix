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
      specVersion = "1.8";
      identifier = { name = "uhc-light"; version = "1.1.9.3"; };
      license = "BSD-3-Clause";
      copyright = "Utrecht University, Department of Information and Computing Sciences, Software Technology group";
      maintainer = "uhc-developers@lists.science.uu.nl";
      author = "Atze Dijkstra";
      homepage = "https://github.com/UU-ComputerScience/uhc";
      url = "";
      synopsis = "Part of UHC packaged as cabal/hackage installable library";
      description = "A 'light' variant of UHC including only an API and executables for compiling to Core representation (uhcl) and running CoreRun (uhcr). This version is just to test the infrastructure. Later versions will provide a fleshing out of the API and completion of the now rudimentary platform independent (Haskell) interpreted running etc..";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."fgl" or (buildDepError "fgl"))
          (hsPkgs."uulib" or (buildDepError "uulib"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."uhc-util" or (buildDepError "uhc-util"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."primitive" or (buildDepError "primitive"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."syb" or (buildDepError "syb"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."uulib" or (buildDepError "uulib"))
          (hsPkgs."old-locale" or (buildDepError "old-locale"))
          ];
        };
      exes = {
        "uhcl" = {
          depends = [
            (hsPkgs."uhc-light" or (buildDepError "uhc-light"))
            (hsPkgs."fgl" or (buildDepError "fgl"))
            (hsPkgs."uulib" or (buildDepError "uulib"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."uhc-util" or (buildDepError "uhc-util"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."primitive" or (buildDepError "primitive"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."syb" or (buildDepError "syb"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."uulib" or (buildDepError "uulib"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            ];
          };
        "uhcr" = {
          depends = [
            (hsPkgs."uhc-light" or (buildDepError "uhc-light"))
            (hsPkgs."fgl" or (buildDepError "fgl"))
            (hsPkgs."uulib" or (buildDepError "uulib"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."uhc-util" or (buildDepError "uhc-util"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."primitive" or (buildDepError "primitive"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."syb" or (buildDepError "syb"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."uulib" or (buildDepError "uulib"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            ];
          };
        };
      };
    }