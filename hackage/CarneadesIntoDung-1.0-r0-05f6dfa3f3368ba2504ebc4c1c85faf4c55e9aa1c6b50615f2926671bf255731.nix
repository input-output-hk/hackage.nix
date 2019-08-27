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
      identifier = { name = "CarneadesIntoDung"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2014 Bas van Gijzel";
      maintainer = "Bas van Gijzel <bmv@cs.nott.ac.uk>";
      author = "Bas van Gijzel, Henrik Nilsson";
      homepage = "http://www.cs.nott.ac.uk/~bmv/CarneadesIntoDung/";
      url = "";
      synopsis = "A translation from the Carneades argumentation model into Dung's AFs.";
      description = "A translation from the Carneades argumentation model\n(<http://hackage.haskell.org/package/CarneadesDSL>) into Dung's\nargumentation frameworks (<http://hackage.haskell.org/package/Dung>).\nThis package provides a translation function and correspondence\nproperties. For the papers accompanying this library see\n\\\"Towards a framework for the implementation and verification of\ntranslations between argumentation models\\\" and \\\"A principled\napproach to the implementation of argumentation models\\\",\navailable at <http://www.cs.nott.ac.uk/~bmv/CarneadesIntoDung/>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."fgl" or (buildDepError "fgl"))
          (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
          (hsPkgs."CarneadesDSL" or (buildDepError "CarneadesDSL"))
          (hsPkgs."Dung" or (buildDepError "Dung"))
          ];
        };
      exes = { "caell" = {}; };
      };
    }