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
      identifier = { name = "octopus"; version = "0.0.2.1"; };
      license = "GPL-3.0-only";
      copyright = "(c) 2014 Zankoku Okuno";
      maintainer = "zankoku.okuno@gmail.com";
      author = "Zankoku Okuno";
      homepage = "https://github.com/Zankoku-Okuno/octopus/";
      url = "";
      synopsis = "Lisp with more dynamism, more power, more simplicity.";
      description = "Octopus is a highly dynamic programming language with an astounding (I think)\npower-to-weight ratio (expressivity-to-complexity). With just a handful of\nsimple primitives, Octopus provides a complete programming environment. Its\nmain focus is on complete programmer control, not on performance or static\nanalysis. While the user can shoot themselves, the most natural methods should\nbe the most reasonable.\nOctopus' is most useful for well-contained problems, for teaching, as a\n(possibly embedded) scripting language, anywhere boilerplate is a serious issue,\nfor problems involving higher math, and for brain-stretching.\nOctopus is currently in the 'useable' stage of development, in the same way\nfood might be food might be 'edible' instead of 'tasty'. We are under active\ndevelopment, working towards 'featureful'.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."symbol" or (buildDepError "symbol"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."hexpr" or (buildDepError "hexpr"))
          ];
        };
      exes = {
        "octi" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."symbol" or (buildDepError "symbol"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."hexpr" or (buildDepError "hexpr"))
            ];
          };
        };
      };
    }