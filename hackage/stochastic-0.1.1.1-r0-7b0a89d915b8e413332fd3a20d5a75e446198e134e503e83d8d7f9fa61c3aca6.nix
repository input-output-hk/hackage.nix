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
      identifier = { name = "stochastic"; version = "0.1.1.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "hackage@mail.kevinl.io";
      author = "Kevin Li";
      homepage = "http://kevinl.io/posts/2016-08-24-sampling-monad.html";
      url = "";
      synopsis = "Monadic composition of probabilistic functions and sampling.";
      description = "This package allows the user to perform monadic composition of\nprobabilistic functions (i.e. functions that take values\nand return distributions over values). These functions\ncan then be sampled from to generate datapoints.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          ];
        buildable = true;
        };
      tests = {
        "shadyGambler" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."stochastic" or (buildDepError "stochastic"))
            (hsPkgs."containers" or (buildDepError "containers"))
            ];
          buildable = true;
          };
        "monadLaws" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."stochastic" or (buildDepError "stochastic"))
            (hsPkgs."random" or (buildDepError "random"))
            ];
          buildable = true;
          };
        "normal3" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."stochastic" or (buildDepError "stochastic"))
            (hsPkgs."random" or (buildDepError "random"))
            ];
          buildable = true;
          };
        "normal10" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."stochastic" or (buildDepError "stochastic"))
            (hsPkgs."random" or (buildDepError "random"))
            ];
          buildable = true;
          };
        "chart" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."stochastic" or (buildDepError "stochastic"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."Chart-cairo" or (buildDepError "Chart-cairo"))
            (hsPkgs."Chart" or (buildDepError "Chart"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            ];
          buildable = true;
          };
        "coolCharts" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."stochastic" or (buildDepError "stochastic"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."Chart-cairo" or (buildDepError "Chart-cairo"))
            (hsPkgs."Chart" or (buildDepError "Chart"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            ];
          buildable = true;
          };
        "swindler" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."stochastic" or (buildDepError "stochastic"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."random" or (buildDepError "random"))
            ];
          buildable = true;
          };
        "montyHall" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."stochastic" or (buildDepError "stochastic"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            ];
          buildable = true;
          };
        "contrivedGambler" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."stochastic" or (buildDepError "stochastic"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."Chart-cairo" or (buildDepError "Chart-cairo"))
            (hsPkgs."Chart" or (buildDepError "Chart"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            ];
          buildable = true;
          };
        "beta" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."stochastic" or (buildDepError "stochastic"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."Chart-cairo" or (buildDepError "Chart-cairo"))
            (hsPkgs."Chart" or (buildDepError "Chart"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      };
    }