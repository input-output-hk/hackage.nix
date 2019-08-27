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
      identifier = { name = "visual-graphrewrite"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "zsol@elte.hu";
      author = "Zsolt Dollenstein";
      homepage = "http://github.com/zsol/visual-graphrewrite/";
      url = "";
      synopsis = "Visualize the graph-rewrite steps of a Haskell program";
      description = "Visualize the graph-rewrite steps of a Haskell program. Currently it only shows the right-hand-sides of rewrite rules (function alternatives).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."value-supply" or (buildDepError "value-supply"))
          (hsPkgs."lazysmallcheck" or (buildDepError "lazysmallcheck"))
          (hsPkgs."haskell-src" or (buildDepError "haskell-src"))
          (hsPkgs."ipprint" or (buildDepError "ipprint"))
          (hsPkgs."strict-concurrency" or (buildDepError "strict-concurrency"))
          (hsPkgs."parallel" or (buildDepError "parallel"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."fgl" or (buildDepError "fgl"))
          (hsPkgs."pretty" or (buildDepError "pretty"))
          (hsPkgs."gtk" or (buildDepError "gtk"))
          (hsPkgs."svgcairo" or (buildDepError "svgcairo"))
          (hsPkgs."cairo" or (buildDepError "cairo"))
          ];
        };
      exes = {
        "visual-graphrewrite" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."value-supply" or (buildDepError "value-supply"))
            (hsPkgs."lazysmallcheck" or (buildDepError "lazysmallcheck"))
            (hsPkgs."haskell-src" or (buildDepError "haskell-src"))
            (hsPkgs."ipprint" or (buildDepError "ipprint"))
            (hsPkgs."strict-concurrency" or (buildDepError "strict-concurrency"))
            (hsPkgs."parallel" or (buildDepError "parallel"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."fgl" or (buildDepError "fgl"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."gtk" or (buildDepError "gtk"))
            (hsPkgs."svgcairo" or (buildDepError "svgcairo"))
            (hsPkgs."cairo" or (buildDepError "cairo"))
            ];
          };
        };
      };
    }