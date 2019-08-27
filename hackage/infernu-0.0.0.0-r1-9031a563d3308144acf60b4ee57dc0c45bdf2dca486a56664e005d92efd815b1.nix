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
    flags = { quickcheck = false; trace = false; debug = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "infernu"; version = "0.0.0.0"; };
      license = "GPL-2.0-only";
      copyright = "Noam Lewis, 2014-2015";
      maintainer = "jones.noamle@gmail.com";
      author = "Noam Lewis";
      homepage = "https://github.com/sinelaw/infernu";
      url = "";
      synopsis = "Type inference and checker for JavaScript (experimental)";
      description = "This version is highly experimental and may set your computer on fire (also, a lot of JS is not supported yet, so it may not be very useful.)\n\nAlso, the latest version is always at <https://github.com/sinelaw/infernu>. The version here (on hackage) is most certainly outdated.\n\nInfernu is a type checker for JavaScript. Since JavaScript is dynamically and weakly typed, it makes no sense to talk about \"type errors\" in arbitrary JavaScript code.\n\nConsequently Infernu makes assumptions about the code and expects it to follow certain rules that\nare not required by plain JavaScript (for example, implicit coercions such as `3 + 'a'` are not\nallowed.)\n\nInfernu's type system is designed for writing dynamic-looking code in a safe statically type-checked\nenvironment. Type annotations are not required (though they would be nice to support, for various\nreasons). Instead, Infernu *infers* the types of expressions by examining the code. If the inferred\ntypes contradict each other, Infernu reports the contradiction as an error.\n\nInfernu places restrictions on JS programs that are otherwise valid. In other words, Infernu is a\n**subset of JavaScript**. Infernu tries to strike a balance between type system complexity and\ndynamic-style coding flexibility.\n\nSee the .md files included in the package for more information.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."either" or (buildDepError "either"))
          (hsPkgs."language-ecmascript" or (buildDepError "language-ecmascript"))
          (hsPkgs."digits" or (buildDepError "digits"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."fgl" or (buildDepError "fgl"))
          (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
          ] ++ (pkgs.lib).optionals (flags.quickcheck) [
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          (hsPkgs."derive" or (buildDepError "derive"))
          ];
        };
      exes = {
        "infernu" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."infernu" or (buildDepError "infernu"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            ] ++ (pkgs.lib).optionals (flags.quickcheck) [
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."derive" or (buildDepError "derive"))
            ];
          };
        "infernu-demo" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."infernu" or (buildDepError "infernu"))
            ] ++ (pkgs.lib).optionals (flags.quickcheck) [
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."derive" or (buildDepError "derive"))
            ];
          };
        "test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."infernu" or (buildDepError "infernu"))
            ] ++ (pkgs.lib).optionals (flags.quickcheck) [
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."derive" or (buildDepError "derive"))
            ];
          };
        };
      };
    }