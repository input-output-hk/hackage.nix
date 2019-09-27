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
      identifier = { name = "hCM"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2017 Marek Suchánek";
      maintainer = "suchama4@fit.cvut.cz";
      author = "Marek Suchánek <suchama4@fit.cvut.cz>";
      homepage = "https://github.com/MarekSuchanek/hCM";
      url = "";
      synopsis = "Conceptual modelling support for Haskell";
      description = "hCM is the result of finding a suitable way how to support conceptual\nmodelling within Haskell programming language in the most simple but smart manner.\nhCM should allow you to build conceptual model with Haskell freely without any\nrestrictions about selected representation of entities, relationships and model\nitself.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."haskell-src" or (buildDepError "haskell-src"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          ];
        buildable = true;
        };
      exes = {
        "hCM" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hCM" or (buildDepError "hCM"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            ];
          buildable = true;
          };
        };
      tests = {
        "hCM-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hCM" or (buildDepError "hCM"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            ];
          buildable = true;
          };
        };
      };
    }