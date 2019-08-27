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
      specVersion = "1.8";
      identifier = { name = "tak-ai"; version = "0.1.0.0"; };
      license = "BSD-2-Clause";
      copyright = "";
      maintainer = "henry@elsie.org.uk";
      author = "Henry Bucklow";
      homepage = "http://bitbucket.org/sffubs/tak";
      url = "";
      synopsis = "AI(s) for playing Tak on playtak.com";
      description = "Takky is a simple bot, using a modest lookahead of 4 plies, and a heuristic\nbased purely on territory owned. It hangs around on playtak.com, providing a\nmoderate challenge to new and intermediate players.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "takky" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."tak" or (buildDepError "tak"))
            (hsPkgs."random-shuffle" or (buildDepError "random-shuffle"))
            ];
          };
        };
      tests = {
        "takky-tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."tak" or (buildDepError "tak"))
            (hsPkgs."random-shuffle" or (buildDepError "random-shuffle"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."matrix" or (buildDepError "matrix"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            ];
          };
        };
      };
    }