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
      identifier = { name = "lift-generics"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "(C) 2015 Ryan Scott";
      maintainer = "Ryan Scott <ryan.gl.scott@gmail.com>";
      author = "Ryan Scott";
      homepage = "https://github.com/RyanGlScott/lift-generics";
      url = "";
      synopsis = "GHC.Generics-based Language.Haskell.TH.Syntax.lift implementation";
      description = "This package provides a \"GHC.Generics\"-based @genericLiftWithPkg@\nfunction (intended for GHC 7.10 and earlier), as well as a\n@genericLift@ function (only available on GHC 8.0 and later),\nboth of which can be used for providing a\n@Language.Haskell.TH.Syntax.lift@ implementation. See the\ndocumentation in the \"Language.Haskell.TH.Lift.Generics\" module\nto get started.\n\nCredit goes to Matthew Pickering for\n<https://ghc.haskell.org/trac/ghc/ticket/1830#comment:12 suggesting this idea>.\n\nNote that due to API limitations, \"GHC.Generics\" wasn't powerful\nenough to come up with the entirety of a `lift` implementation prior\nto GHC 8.0. For this reason, @genericLiftWithPkg@ requires you to\nproduce the package name yourself, which proves to be no small feat\n(see the documentation for more info).\n\nLuckily, you don't have to jump through as many hoops on GHC 8.0 and\nlater: simply use the @genericLift@ function, and life is good.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."generic-deriving" or (buildDepError "generic-deriving"))
          (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."base-compat" or (buildDepError "base-compat"))
            (hsPkgs."generic-deriving" or (buildDepError "generic-deriving"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."lift-generics" or (buildDepError "lift-generics"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            ];
          buildable = true;
          };
        };
      };
    }