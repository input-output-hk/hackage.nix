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
    flags = { test-doctests = true; herbie = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "hyperloglog"; version = "0.4.0.3"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2013-2015 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/analytics/hyperloglog";
      url = "";
      synopsis = "An approximate streaming (constant space) unique object counter";
      description = "This package provides an approximate streaming (constant space) unique object counter.\n\nSee the original paper for details:\n<http://algo.inria.fr/flajolet/Publications/FlFuGaMe07.pdf>\n\nNotably it can be used to approximate a set of several billion elements with 1-2% inaccuracy\nin around 1.5k of memory.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."approximate" or (buildDepError "approximate"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."bits" or (buildDepError "bits"))
          (hsPkgs."bytes" or (buildDepError "bytes"))
          (hsPkgs."cereal" or (buildDepError "cereal"))
          (hsPkgs."cereal-vector" or (buildDepError "cereal-vector"))
          (hsPkgs."comonad" or (buildDepError "comonad"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."distributive" or (buildDepError "distributive"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."hashable-extras" or (buildDepError "hashable-extras"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."reflection" or (buildDepError "reflection"))
          (hsPkgs."semigroupoids" or (buildDepError "semigroupoids"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."safecopy" or (buildDepError "safecopy"))
          (hsPkgs."siphash" or (buildDepError "siphash"))
          (hsPkgs."tagged" or (buildDepError "tagged"))
          (hsPkgs."vector" or (buildDepError "vector"))
          ] ++ (pkgs.lib).optional (flags.herbie) (hsPkgs."HerbiePlugin" or (buildDepError "HerbiePlugin"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.6") (hsPkgs."generic-deriving" or (buildDepError "generic-deriving"));
        };
      tests = {
        "doctests" = {
          depends = (pkgs.lib).optionals (!(!flags.test-doctests)) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."doctest" or (buildDepError "doctest"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."generic-deriving" or (buildDepError "generic-deriving"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."simple-reflect" or (buildDepError "simple-reflect"))
            ];
          };
        };
      };
    }