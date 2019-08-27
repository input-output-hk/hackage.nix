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
      identifier = { name = "plot-gtk-ui"; version = "0.3.0.0"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "sumit.sahrawat.apm13@iitbhu.ac.in";
      author = "Sumit Sahrawat";
      homepage = "https://github.com/sumitsahrawat/plot-gtk-ui";
      url = "";
      synopsis = "A quick way to use Mathematica like Manipulation abilities";
      description = "A pre-built ui for plotting based on plot. Quicker to use than\nplot-gtk, but less configurable, and less versatile.\n\nOnly provides ability to plot mathematical functions. But, also\nallows dynamic plotting functionality similar to Mathematica.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."colour" or (buildDepError "colour"))
          (hsPkgs."plot" or (buildDepError "plot"))
          (hsPkgs."gtk" or (buildDepError "gtk"))
          (hsPkgs."cairo" or (buildDepError "cairo"))
          (hsPkgs."hmatrix" or (buildDepError "hmatrix"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."fixed-vector" or (buildDepError "fixed-vector"))
          ];
        };
      };
    }