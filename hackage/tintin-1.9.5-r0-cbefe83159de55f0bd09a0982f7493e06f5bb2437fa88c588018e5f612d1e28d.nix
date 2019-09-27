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
      identifier = { name = "tintin"; version = "1.9.5"; };
      license = "Apache-2.0";
      copyright = "2018 Theam";
      maintainer = "hackers@theam.io";
      author = "The Agile Monkeys";
      homepage = "https://github.com/theam/tintin#readme";
      url = "";
      synopsis = "A softer alternative to Haddock";
      description = "Please see the website <https://theam.github.io/tintin>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."clay" or (buildDepError "clay"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."data-has" or (buildDepError "data-has"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."frontmatter" or (buildDepError "frontmatter"))
          (hsPkgs."inliterate" or (buildDepError "inliterate"))
          (hsPkgs."lucid" or (buildDepError "lucid"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."require" or (buildDepError "require"))
          (hsPkgs."temporary" or (buildDepError "temporary"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."universum" or (buildDepError "universum"))
          (hsPkgs."yaml" or (buildDepError "yaml"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.require or (pkgs.buildPackages.require or (buildToolDepError "require")))
          ];
        buildable = true;
        };
      exes = {
        "tintin" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."optparse-generic" or (buildDepError "optparse-generic"))
            (hsPkgs."require" or (buildDepError "require"))
            (hsPkgs."tintin" or (buildDepError "tintin"))
            (hsPkgs."universum" or (buildDepError "universum"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.require or (pkgs.buildPackages.require or (buildToolDepError "require")))
            ];
          buildable = true;
          };
        };
      tests = {
        "tintin-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."require" or (buildDepError "require"))
            (hsPkgs."tintin" or (buildDepError "tintin"))
            ];
          buildable = true;
          };
        };
      };
    }