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
      identifier = { name = "testing-feat"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "Jonas Duregård";
      maintainer = "jonas.duregard@gmail.com";
      author = "Jonas Duregård";
      homepage = "";
      url = "";
      synopsis = "Functional enumeration for systematic and random testing";
      description = "Feat (Functional Enumeration of Abstract Types)\nprovides an enumeration as a function from natural\nnumbers to values (similar to @toEnum@). This can be used\nboth for SmallCheck-style systematic testing and QuickCheck\nstyle random testing, and hybrids of the two.\n\nThe enumerators are defined in a very boilerplate manner\nand there is a Template Haskell script for deriving the\nclass instance for most types.\n\"Test.Feat\" contain a subset of the other modules that\nshould be sufficient for most test usage. There\nare two (somewhat similar) large scale example in the tar\nball: testing the Template Haskell pretty printer and\ntesting haskell-src-exts.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."data-memocombinators" or (buildDepError "data-memocombinators"))
          ];
        };
      };
    }