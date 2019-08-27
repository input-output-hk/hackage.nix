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
      identifier = { name = "forest-fire"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2017 Paul";
      maintainer = "paul.david@redbubble.com";
      author = "Paul";
      homepage = "https://github.com/toothbrush/forest-fire#readme";
      url = "";
      synopsis = "Recursively delete CloudFormation stacks and their dependants";
      description = "This simple tool will repeatedly query CloudFormation\nstacks for outputs, and see if any other stacks are\nimporting those.  This is to make it easier to tear down\nCFn stacks which have many other stacks depending on\ntheir outputs.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."pretty-tree" or (buildDepError "pretty-tree"))
          ];
        };
      exes = {
        "forest-fire" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cli" or (buildDepError "cli"))
            (hsPkgs."forest-fire" or (buildDepError "forest-fire"))
            ];
          };
        };
      tests = {
        "forest-fire-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."forest-fire" or (buildDepError "forest-fire"))
            ];
          };
        };
      };
    }