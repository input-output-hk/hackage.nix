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
    flags = { dev = false; };
    package = {
      specVersion = "2.4";
      identifier = { name = "mutable-lens"; version = "0.1.0.0"; };
      license = "Apache-2.0";
      copyright = "2020 Ximin Luo";
      maintainer = "infinity0@pwned.gg";
      author = "Ximin Luo";
      homepage = "https://github.com/infinity0/hs-mutable-lens";
      url = "";
      synopsis = "Interoperate mutable references with regular lens";
      description = "Use mutable references as lens, compose them with other lens, and run them.\n\nYou may have heard of lens being described as \"functional\" or \"first-class\"\nreferences, with some nice properties such as composition. However the\nequivalence is more than just abstract - mutable references can be readily\nconverted into lens form, interoperable with other pure lens. This makes use\nof the fact that \"mutability\" in a high-level language focusing on purity, is\nreally just an alias for a pure state monad that is treated specially by the\nruntime system. A mutable reference over a value of type @a@ with world state\nof type @s@, *is* therefore an actual @Lens s s a a@. There is no need for\nhandwaving or connotative language, the isomorphism is direct and concrete.\n\nThis package demonstrates this isomorphism, converting between the two forms.\nYou then have access to the whole of the lens ecosystem and its compositional\nproperties, and use them with mutable references without other special-cased\nshims or mutable-specific abstractions.\n\nUniformity of API is another major benefit - if you want to switch to a\ndifferent reference type, you only have to change your type definitions and\nimports, you don't have to change all @readSomeVar@ to @readOtherVar@,\n@writeSomeVar@ to @writeOtherVar@, or was it @putOtherVar@, and does the\n@atomicModifyVar@ function take a @s -> (a, s)@ or a @s -> (s, a)@ again?\n\nOn the other hand, this package has not been optimised for performance, and\ncurrently only supports GHC. We would certainly welcome contributions in\nthese areas, if you are interested in running this code in production. Until\nthat happens, please be cautious and treat this code as experimental.\n\nFor what it's worth, the API is likely to be very stable: an isomorphism to\nanother well-established library, is not a complex API.\n\nSee unit tests for example usage, e.g.\n<https://github.com/infinity0/hs-mutable-lens/tree/master/test/Control/Lens/MutableTest.hs MutableTest>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."primitive" or (buildDepError "primitive"))
          (hsPkgs."stm" or (buildDepError "stm"))
          ];
        buildable = true;
        };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."doctest" or (buildDepError "doctest"))
            (hsPkgs."mutable-lens" or (buildDepError "mutable-lens"))
            ];
          buildable = true;
          };
        "unit" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."checkers" or (buildDepError "checkers"))
            (hsPkgs."mutable-lens" or (buildDepError "mutable-lens"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."primitive" or (buildDepError "primitive"))
            (hsPkgs."stm" or (buildDepError "stm"))
            ];
          buildable = true;
          };
        };
      };
    }