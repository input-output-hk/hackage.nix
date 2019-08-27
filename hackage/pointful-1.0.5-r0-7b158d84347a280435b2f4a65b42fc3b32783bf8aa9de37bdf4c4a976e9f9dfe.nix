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
    flags = { separatesyb = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "pointful"; version = "1.0.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Mikhail Glushenkov <mikhail.glushenkov@gmail.com>";
      author = "Thomas Jäger";
      homepage = "http://github.com/23Skidoo/pointful";
      url = "";
      synopsis = "Pointful refactoring tool";
      description = "Stand-alone command-line version of the pointful plugin\nfor Lambdabot.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."haskell-src" or (buildDepError "haskell-src"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          ] ++ (if flags.separatesyb
          then [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."syb" or (buildDepError "syb"))
            ]
          else [ (hsPkgs."base" or (buildDepError "base")) ]);
        };
      exes = {
        "pointful" = {
          depends = [
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."haskell-src" or (buildDepError "haskell-src"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            ] ++ (if flags.separatesyb
            then [
              (hsPkgs."base" or (buildDepError "base"))
              (hsPkgs."syb" or (buildDepError "syb"))
              ]
            else [ (hsPkgs."base" or (buildDepError "base")) ]);
          };
        };
      };
    }