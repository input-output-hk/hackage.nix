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
      identifier = { name = "graphicstools"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "matti.j.eskelinen@jyu.fi";
      author = "Matti J. Eskelinen & Ville Tirronen";
      homepage = "https://yousource.it.jyu.fi/cvlab/pages/GraphicsTools";
      url = "";
      synopsis = "Tools for creating graphical UIs, based on wxHaskell.";
      description = "This library provides interfaces for creating easily\ngraphical UIs especially for computer vision purposes,\nand for rendering information in graphical form.\nImplementations are provided for CV libraries.\nExample applications are included.\n(This is an early preview version)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bindings-DSL" or (buildDepError "bindings-DSL"))
          (hsPkgs."CV" or (buildDepError "CV"))
          (hsPkgs."wxcore" or (buildDepError "wxcore"))
          (hsPkgs."wx" or (buildDepError "wx"))
          ];
        };
      exes = {
        "cvexample" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."wxcore" or (buildDepError "wxcore"))
            (hsPkgs."wx" or (buildDepError "wx"))
            (hsPkgs."CV" or (buildDepError "CV"))
            (hsPkgs."graphicstools" or (buildDepError "graphicstools"))
            ];
          };
        };
      };
    }