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
    flags = { example = false; };
    package = {
      specVersion = "1.18";
      identifier = { name = "lp-diagrams-svg"; version = "1.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "jeanphilippe.bernardy@gmail.com";
      author = "Jean-Philippe Bernardy";
      homepage = "";
      url = "";
      synopsis = "SVG Backend for lp-diagrams";
      description = "SVG backend for lp-diagrams";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."lp-diagrams" or (buildDepError "lp-diagrams"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."lucid-svg" or (buildDepError "lucid-svg"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."svg-tree" or (buildDepError "svg-tree"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."linear" or (buildDepError "linear"))
          (hsPkgs."JuicyPixels" or (buildDepError "JuicyPixels"))
          (hsPkgs."FontyFruity" or (buildDepError "FontyFruity"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
          (hsPkgs."gasp" or (buildDepError "gasp"))
          ];
        };
      exes = {
        "lp-diagrams-svg-example" = {
          depends = [
            (hsPkgs."lp-diagrams-svg" or (buildDepError "lp-diagrams-svg"))
            (hsPkgs."lp-diagrams" or (buildDepError "lp-diagrams"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."FontyFruity" or (buildDepError "FontyFruity"))
            (hsPkgs."gasp" or (buildDepError "gasp"))
            ];
          };
        };
      };
    }