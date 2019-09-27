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
    flags = { demo = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "gridland"; version = "0.1.0.3"; };
      license = "MIT";
      copyright = "";
      maintainer = "https://github.com/jxv";
      author = "Joe Vargas";
      homepage = "";
      url = "";
      synopsis = "Grid-based multimedia engine";
      description = "Learn Haskell by drawing sprites and playing music and sound effects.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."SDL" or (buildDepError "SDL"))
          (hsPkgs."SDL-image" or (buildDepError "SDL-image"))
          (hsPkgs."SDL-mixer" or (buildDepError "SDL-mixer"))
          (hsPkgs."SDL-gfx" or (buildDepError "SDL-gfx"))
          (hsPkgs."astar" or (buildDepError "astar"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."tuple" or (buildDepError "tuple"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."grid" or (buildDepError "grid"))
          (hsPkgs."htiled" or (buildDepError "htiled"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."safe" or (buildDepError "safe"))
          ];
        buildable = true;
        };
      exes = {
        "demo" = {
          depends = (pkgs.lib).optionals (flags.demo) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."gridland" or (buildDepError "gridland"))
            ];
          buildable = if flags.demo then true else false;
          };
        };
      };
    }