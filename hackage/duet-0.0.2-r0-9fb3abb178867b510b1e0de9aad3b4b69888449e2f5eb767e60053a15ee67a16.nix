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
      identifier = { name = "duet"; version = "0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "chrisdone@gmail.com";
      author = "";
      homepage = "";
      url = "";
      synopsis = "A tiny language, a subset of Haskell (with type classes) aimed at aiding teachers to teach Haskell";
      description = "A tiny language, a subset of Haskell (with type classes) aimed at aiding teachers to teach Haskell";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."edit-distance" or (buildDepError "edit-distance"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."syb" or (buildDepError "syb"))
          (hsPkgs."monad-logger" or (buildDepError "monad-logger"))
          ];
        buildable = true;
        };
      exes = {
        "duet" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."duet" or (buildDepError "duet"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."syb" or (buildDepError "syb"))
            (hsPkgs."monad-logger" or (buildDepError "monad-logger"))
            (hsPkgs."optparse-simple" or (buildDepError "optparse-simple"))
            ];
          buildable = true;
          };
        };
      tests = {
        "duet-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."duet" or (buildDepError "duet"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."edit-distance" or (buildDepError "edit-distance"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."syb" or (buildDepError "syb"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."monad-logger" or (buildDepError "monad-logger"))
            ];
          buildable = true;
          };
        };
      };
    }