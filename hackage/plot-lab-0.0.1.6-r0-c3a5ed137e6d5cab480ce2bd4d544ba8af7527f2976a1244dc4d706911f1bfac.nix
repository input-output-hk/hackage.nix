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
      identifier = { name = "plot-lab"; version = "0.0.1.6"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "sumit.sahrawat.apm13 <at> iitbhu <dot> ac <dot> in";
      author = "Sumit Sahrawat";
      homepage = "github.com/sumitsahrawat/plot-lab";
      url = "";
      synopsis = "A plotting tool with Mathematica like Manipulation abilities";
      description = "Mathematica has a nice plotting feature that allows for plotting of functions that depend on more than one variable, and then allows changing the value\nof the extra parameters to see real-time animated changes in the plot. This application attempts to provide the same for 2-D plots for free.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "plot-lab" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."colour" or (buildDepError "colour"))
            (hsPkgs."plot" or (buildDepError "plot"))
            (hsPkgs."gtk" or (buildDepError "gtk"))
            (hsPkgs."hmatrix" or (buildDepError "hmatrix"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }