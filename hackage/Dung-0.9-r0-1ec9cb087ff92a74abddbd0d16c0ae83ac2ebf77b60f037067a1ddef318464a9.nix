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
      specVersion = "1.2";
      identifier = { name = "Dung"; version = "0.9"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2013 Bas van Gijzel";
      maintainer = "Bas van Gijzel <bmv@cs.nott.ac.uk>";
      author = "Bas van Gijzel";
      homepage = "http://www.cs.nott.ac.uk/~bmv/Dung/";
      url = "";
      synopsis = "An implementation of the Dung argumentation frameworks.";
      description = "An implementation of Dung's argumentation frameworks, an abstract argumentation model used to either directly represent conflicting information, or used as\na translation target for more complex (structured) argumentation models. For an introduction to Dung's frameworks see\n<http://en.wikipedia.org/wiki/Argumentation_framework> and Dung's paper from 1995: \\\"On the acceptability of arguments and its fundamental role\nin nonmonotonic reasoning, logic programming, and n-person games\\\", Artificial Intelligence 77: 321-357.\nFor the paper accompanying this library see \\\"Towards a framework for the implementation and verification of translations between argumentation\nmodels\\\" available at <http://www.cs.nott.ac.uk/~bmv/Dung/>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          ];
        };
      };
    }