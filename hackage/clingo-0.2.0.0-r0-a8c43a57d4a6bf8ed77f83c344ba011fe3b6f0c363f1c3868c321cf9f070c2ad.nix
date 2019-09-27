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
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "clingo"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "2017 Paul Ogris";
      maintainer = "paul@tsahyt.com";
      author = "Paul Ogris";
      homepage = "https://github.com/tsahyt/clingo-haskell#readme";
      url = "";
      synopsis = "Haskell bindings to the Clingo ASP solver";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bifunctors" or (buildDepError "bifunctors"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."wl-pprint-text" or (buildDepError "wl-pprint-text"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."StateVar" or (buildDepError "StateVar"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          ];
        libs = [ (pkgs."clingo" or (sysDepError "clingo")) ];
        buildable = true;
        };
      exes = {
        "version" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."clingo" or (buildDepError "clingo"))
            ];
          buildable = if flags.examples then true else false;
          };
        "dot-propagator" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."clingo" or (buildDepError "clingo"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          buildable = if flags.examples then true else false;
          };
        "control" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."clingo" or (buildDepError "clingo"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          buildable = if flags.examples then true else false;
          };
        "configuration" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."clingo" or (buildDepError "clingo"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."StateVar" or (buildDepError "StateVar"))
            ];
          buildable = if flags.examples then true else false;
          };
        "theory-atoms" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."clingo" or (buildDepError "clingo"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          buildable = if flags.examples then true else false;
          };
        "symbolic-atoms" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."clingo" or (buildDepError "clingo"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          buildable = if flags.examples then true else false;
          };
        "ast" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."clingo" or (buildDepError "clingo"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          buildable = if flags.examples then true else false;
          };
        "backend" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."clingo" or (buildDepError "clingo"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          buildable = if flags.examples then true else false;
          };
        "model" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."clingo" or (buildDepError "clingo"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          buildable = if flags.examples then true else false;
          };
        "solve-async" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."clingo" or (buildDepError "clingo"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."monad-loops" or (buildDepError "monad-loops"))
            (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
            ];
          buildable = if flags.examples then true else false;
          };
        "statistics" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."clingo" or (buildDepError "clingo"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."wl-pprint-text" or (buildDepError "wl-pprint-text"))
            (hsPkgs."StateVar" or (buildDepError "StateVar"))
            ];
          buildable = if flags.examples then true else false;
          };
        "propagator" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."clingo" or (buildDepError "clingo"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          buildable = if flags.examples then true else false;
          };
        };
      };
    }