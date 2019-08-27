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
      specVersion = "1.24";
      identifier = { name = "CSPM-cspm"; version = "0.8.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Marc Fontaine <Marc.Fontaine@gmx.de>";
      author = "Marc Fontaine <Marc.Fontaine@gmx.de>";
      homepage = "";
      url = "";
      synopsis = "cspm command line tool for analyzing CSPM specifications.";
      description = "cspm is a small command line tool for analyzing CSPM specifications.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."CSPM-Frontend" or (buildDepError "CSPM-Frontend"))
          (hsPkgs."CSPM-CoreLanguage" or (buildDepError "CSPM-CoreLanguage"))
          (hsPkgs."CSPM-FiringRules" or (buildDepError "CSPM-FiringRules"))
          (hsPkgs."CSPM-Interpreter" or (buildDepError "CSPM-Interpreter"))
          (hsPkgs."CSPM-ToProlog" or (buildDepError "CSPM-ToProlog"))
          (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
          (hsPkgs."xml" or (buildDepError "xml"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."parallel" or (buildDepError "parallel"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."syb" or (buildDepError "syb"))
          (hsPkgs."prettyclass" or (buildDepError "prettyclass"))
          (hsPkgs."hslua" or (buildDepError "hslua"))
          ];
        };
      exes = {
        "cspm" = {
          depends = [
            (hsPkgs."CSPM-Frontend" or (buildDepError "CSPM-Frontend"))
            (hsPkgs."CSPM-CoreLanguage" or (buildDepError "CSPM-CoreLanguage"))
            (hsPkgs."CSPM-FiringRules" or (buildDepError "CSPM-FiringRules"))
            (hsPkgs."CSPM-Interpreter" or (buildDepError "CSPM-Interpreter"))
            (hsPkgs."CSPM-ToProlog" or (buildDepError "CSPM-ToProlog"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."xml" or (buildDepError "xml"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."parallel" or (buildDepError "parallel"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."syb" or (buildDepError "syb"))
            (hsPkgs."prettyclass" or (buildDepError "prettyclass"))
            (hsPkgs."hslua" or (buildDepError "hslua"))
            ];
          };
        };
      };
    }