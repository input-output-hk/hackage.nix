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
    flags = { extra = false; cli = false; yaml = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "etc"; version = "0.4.0.1"; };
      license = "MIT";
      copyright = "2017, 2018 Roman Gonzalez";
      maintainer = "open-source@roman-gonzalez.info";
      author = "Roman Gonzalez";
      homepage = "https://github.com/roman/Haskell-etc";
      url = "";
      synopsis = "Declarative configuration spec for Haskell projects";
      description = "`etc` gathers configuration values from multiple sources (cli options, OS\nenvironment variables, files) using a declarative spec file that defines where\nthese values are to be found and located in a configuration map.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."rio" or (buildDepError "rio"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."typed-process" or (buildDepError "typed-process"))
          (hsPkgs."unliftio" or (buildDepError "unliftio"))
          ] ++ (pkgs.lib).optionals (flags.extra) [
          (hsPkgs."ansi-wl-pprint" or (buildDepError "ansi-wl-pprint"))
          (hsPkgs."edit-distance" or (buildDepError "edit-distance"))
          ]) ++ (pkgs.lib).optional (flags.cli) (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))) ++ (pkgs.lib).optional (flags.yaml) (hsPkgs."yaml" or (buildDepError "yaml"));
        };
      tests = {
        "etc-testsuite" = {
          depends = (([
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."rio" or (buildDepError "rio"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."etc" or (buildDepError "etc"))
            ] ++ (pkgs.lib).optional (flags.cli) (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))) ++ (pkgs.lib).optional (flags.yaml) (hsPkgs."yaml" or (buildDepError "yaml"))) ++ (pkgs.lib).optional (flags.extra) (hsPkgs."edit-distance" or (buildDepError "edit-distance"));
          };
        };
      };
    }