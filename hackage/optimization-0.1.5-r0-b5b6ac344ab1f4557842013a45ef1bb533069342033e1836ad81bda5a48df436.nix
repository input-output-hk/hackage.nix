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
      identifier = { name = "optimization"; version = "0.1.5"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2013 Ben Gamari";
      maintainer = "Ben Gamari <bgamari@gmail.com>";
      author = "Ben Gamari";
      homepage = "http://github.com/bgamari/optimization";
      url = "";
      synopsis = "Numerical optimization";
      description = "These are a set of implementations of various numerical optimization\nmethods in Haskell. Note that these implementations were originally\nwritten as part of a class project; while at one point they worked\nno attention has been given to numerical stability or the many other\npotential difficulties of implementing robust numerical\nmethods. That being said, they should serve to succinctly illustrate\na number of optimization techniques from the modern optimization\nliterature.\n\nThose seeking a high-level overview of some of these methods are\nreferred to Stephen Wright's excellent tutorial from NIPS 2010\n<http://videolectures.net/nips2010_wright_oaml/>. A deeper\nintroduction can be found in Boyd and Vandenberghe's *Complex\nOptimization* which available freely online.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."ad" or (buildDepError "ad"))
          (hsPkgs."linear" or (buildDepError "linear"))
          (hsPkgs."semigroupoids" or (buildDepError "semigroupoids"))
          (hsPkgs."distributive" or (buildDepError "distributive"))
          ];
        buildable = true;
        };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."doctest" or (buildDepError "doctest"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ];
          buildable = true;
          };
        };
      };
    }