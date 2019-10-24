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
      identifier = { name = "krank"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "guillaum.bouchard@gmail.com";
      author = "Guillaume Bouchard";
      homepage = "https://github.com/guibou/krank";
      url = "";
      synopsis = "Krank checks your code source comments for important markers";
      description = "Comments are part of our code and are not usually tested correctly. Hence their content can become incoherent or obsolete. Krank tries to avoid that by running checkers on the comment themselves.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."PyF" or (buildDepError "PyF"))
          (hsPkgs."req" or (buildDepError "req"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          (hsPkgs."replace-megaparsec" or (buildDepError "replace-megaparsec"))
          (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."safe-exceptions" or (buildDepError "safe-exceptions"))
          ];
        buildable = true;
        };
      exes = {
        "krank" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."krank" or (buildDepError "krank"))
            (hsPkgs."PyF" or (buildDepError "PyF"))
            (hsPkgs."safe-exceptions" or (buildDepError "safe-exceptions"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      tests = {
        "krank-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."PyF" or (buildDepError "PyF"))
            (hsPkgs."krank" or (buildDepError "krank"))
            (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
            ];
          buildable = true;
          };
        };
      };
    }