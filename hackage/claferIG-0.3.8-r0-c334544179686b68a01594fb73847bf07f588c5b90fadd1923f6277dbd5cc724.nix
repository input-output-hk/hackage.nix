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
      specVersion = "1.18";
      identifier = { name = "claferIG"; version = "0.3.8"; };
      license = "MIT";
      copyright = "";
      maintainer = "Jimmy Liang <jliang@gsd.uwaterloo.ca>";
      author = "Jimmy Liang, Michał Antkiewicz, Luke Michael Brown";
      homepage = "https://github.com/gsdlab/claferIG";
      url = "";
      synopsis = "claferIG is an interactive tool that generates instances of Clafer models.";
      description = "Clafer is a powerful (equivalent to first-order predicate logic) yet lightweight structural modeling language. Despite simplicity and conciseness of Clafer, writing correct models remains challenging due to hard-to-predict interactions among all constraints expressed in the model. Clafer instance generator (ClaferIG) is an interactive tool that generates instances and counter examples of concrete clafers in a Clafer model. If the concrete clafers do not have contradicting constraints, the generator produces valid instance data. Otherwise, the generator produces an unsatisfiable core which included all contradicting constraints and generates a counter example by removing one constraint from the core. The generator can potentially produce many instances if the concrete clafers are not fully specialized. The generator produces different instances on-demand. With these capabilities, the instance generator can be used for debugging models: checking the consistency of the model and detecting under- and overconstraining of the model. The instance generator can also be used programmatically via API (the command line and interactive session interfaces only use the API).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."data-stringmap" or (buildDepError "data-stringmap"))
          (hsPkgs."executable-path" or (buildDepError "executable-path"))
          (hsPkgs."haskeline" or (buildDepError "haskeline"))
          (hsPkgs."HaXml" or (buildDepError "HaXml"))
          (hsPkgs."json-builder" or (buildDepError "json-builder"))
          (hsPkgs."string-conversions" or (buildDepError "string-conversions"))
          (hsPkgs."clafer" or (buildDepError "clafer"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.ghc or (pkgs.buildPackages.ghc or (buildToolDepError "ghc")))
          ];
        };
      exes = {
        "claferIG" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."clafer" or (buildDepError "clafer"))
            (hsPkgs."claferIG" or (buildDepError "claferIG"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."executable-path" or (buildDepError "executable-path"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."haskeline" or (buildDepError "haskeline"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.ghc or (pkgs.buildPackages.ghc or (buildToolDepError "ghc")))
            ];
          };
        };
      tests = {
        "test-suite" = {
          depends = [
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."tasty-th" or (buildDepError "tasty-th"))
            (hsPkgs."clafer" or (buildDepError "clafer"))
            (hsPkgs."claferIG" or (buildDepError "claferIG"))
            ];
          };
        };
      };
    }