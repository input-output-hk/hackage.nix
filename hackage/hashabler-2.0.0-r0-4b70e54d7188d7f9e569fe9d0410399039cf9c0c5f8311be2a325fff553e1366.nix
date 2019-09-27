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
    flags = { integer-gmp = true; dev = false; instrumented = false; };
    package = {
      specVersion = "1.18";
      identifier = { name = "hashabler"; version = "2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "brandon.m.simmons@gmail.com";
      author = "Brandon Simmons";
      homepage = "https://github.com/jberryman/hashabler";
      url = "";
      synopsis = "Principled, portable & extensible hashing of data and types, including an implementation of the FNV-1a and SipHash algorithms.";
      description = "This package is a rewrite of the @hashable@ library by Milan Straka and\nJohan Tibell, having the following goals:\n\n- Extensibility; it should be easy to implement a new hashing algorithm on\nany @Hashable@ type; in this package we provide SipHash and FNV-1a.\n\n- Honest hashing of values, and principled hashing of algebraic data types\n(see e.g. hashable issues #74 and #30)\n\n- Cross-platform consistent hash values, with a versioning guarantee. Where\npossible we ensure morally identical data hashes to indentical values\nregardless of processor word size and endianness.\n\n- Make implementing identical hash routines in other languages as painless\nas possible. In addition to SipHash, we provide an implementation of a\nsimple hashing algorithm (FNV-1a) and make an effort to define Hashable\ninstances in a way that is well-documented and sensible, so that e.g. one\ncan easily implement a string hashing routine in JavaScript that will\nmatch the way we hash strings here.\n\n/Versioning/: Except for instances where we specifically note that we make\nno promise of consistency, changes to hash values (and consequently changes\nto @StableHashable@ values, where applicable) entail a major version number\nbump.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."primitive" or (buildDepError "primitive"))
          (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.9") (hsPkgs."transformers" or (buildDepError "transformers"))) ++ (pkgs.lib).optional (flags.integer-gmp && !(compiler.isGhcjs && true)) (hsPkgs."integer-gmp" or (buildDepError "integer-gmp"));
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = (pkgs.lib).optionals (flags.dev) ([
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hashabler" or (buildDepError "hashabler"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."primitive" or (buildDepError "primitive"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            ] ++ (pkgs.lib).optional (flags.integer-gmp && !(compiler.isGhcjs && true)) (hsPkgs."integer-gmp" or (buildDepError "integer-gmp")));
          buildable = if flags.dev then true else false;
          };
        };
      benchmarks = {
        "bench" = {
          depends = (pkgs.lib).optionals (flags.dev) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."primitive" or (buildDepError "primitive"))
            (hsPkgs."hashabler" or (buildDepError "hashabler"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            ];
          buildable = if flags.dev then true else false;
          };
        "viz" = {
          depends = (pkgs.lib).optionals (flags.dev) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."primitive" or (buildDepError "primitive"))
            (hsPkgs."JuicyPixels" or (buildDepError "JuicyPixels"))
            (hsPkgs."mwc-random" or (buildDepError "mwc-random"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."hashabler" or (buildDepError "hashabler"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            ];
          buildable = if flags.dev then true else false;
          };
        "core" = {
          depends = (pkgs.lib).optionals (flags.dev) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hashabler" or (buildDepError "hashabler"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            ];
          buildable = if flags.dev then true else false;
          };
        };
      };
    }