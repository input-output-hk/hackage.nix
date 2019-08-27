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
      specVersion = "1.6";
      identifier = { name = "mueval"; version = "0.9"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Gwern <gwern0@gmail.com>";
      author = "Gwern";
      homepage = "http://code.haskell.org/mubot/";
      url = "";
      synopsis = "Safely evaluate pure Haskell expressions";
      description = "Mueval is a Haskell interpreter. It\nuses the GHC API to evaluate arbitrary Haskell expressions.\nImportantly, mueval takes many precautions to defang and avoid \\\"evil\\\"\ncode.  It uses resource limits, whitelisted modules and Safe Haskell,\nspecial Show instances for IO, threads, processes, and changes of directory\nto sandbox the Haskell code.\n\nIt is, in short, intended to be a standalone version of Lambdabot's famous\nevaluation functionality. For examples and explanations, please see the README file.\n\nMueval is POSIX-only.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."unix" or (buildDepError "unix"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."hint" or (buildDepError "hint"))
          (hsPkgs."show" or (buildDepError "show"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          (hsPkgs."Cabal" or (buildDepError "Cabal"))
          (hsPkgs."extensible-exceptions" or (buildDepError "extensible-exceptions"))
          (hsPkgs."simple-reflect" or (buildDepError "simple-reflect"))
          ];
        };
      exes = {
        "mueval-core" = {
          depends = [ (hsPkgs."base" or (buildDepError "base")) ];
          };
        "mueval" = { depends = [ (hsPkgs."base" or (buildDepError "base")) ]; };
        };
      };
    }