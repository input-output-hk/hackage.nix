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
      identifier = { name = "ogmarkup"; version = "2.1"; };
      license = "MIT";
      copyright = "2016 Ogma Project";
      maintainer = "contact@thomasletan.fr";
      author = "Thomas Letan, Laurent Georget";
      homepage = "http://github.com/ogma-project/ogmarkup";
      url = "";
      synopsis = "A lightweight markup language for story writers";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          ];
        };
      exes = {
        "ogmarkup" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."ogmarkup" or (buildDepError "ogmarkup"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."yesod" or (buildDepError "yesod"))
            (hsPkgs."shakespeare" or (buildDepError "shakespeare"))
            (hsPkgs."blaze-html" or (buildDepError "blaze-html"))
            ];
          };
        };
      tests = {
        "ogmadown-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."ogmarkup" or (buildDepError "ogmarkup"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."shakespeare" or (buildDepError "shakespeare"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          };
        };
      };
    }