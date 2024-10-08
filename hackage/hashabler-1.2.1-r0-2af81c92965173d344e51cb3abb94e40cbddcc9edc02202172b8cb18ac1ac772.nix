{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { integer-gmp = true; dev = false; };
    package = {
      specVersion = "1.18";
      identifier = { name = "hashabler"; version = "1.2.1"; };
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.9") (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))) ++ pkgs.lib.optional (flags.integer-gmp) (hsPkgs."integer-gmp" or (errorHandler.buildDepError "integer-gmp"));
        buildable = true;
      };
      tests = {
        "tests" = {
          depends = pkgs.lib.optionals (flags.dev) ([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hashabler" or (errorHandler.buildDepError "hashabler"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ] ++ pkgs.lib.optional (flags.integer-gmp) (hsPkgs."integer-gmp" or (errorHandler.buildDepError "integer-gmp")));
          buildable = if flags.dev then true else false;
        };
      };
      benchmarks = {
        "bench" = {
          depends = pkgs.lib.optionals (flags.dev) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."hashabler" or (errorHandler.buildDepError "hashabler"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ];
          buildable = if flags.dev then true else false;
        };
        "viz" = {
          depends = pkgs.lib.optionals (flags.dev) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."hashabler" or (errorHandler.buildDepError "hashabler"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          ];
          buildable = if flags.dev then true else false;
        };
        "core" = {
          depends = pkgs.lib.optionals (flags.dev) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hashabler" or (errorHandler.buildDepError "hashabler"))
          ];
          buildable = if flags.dev then true else false;
        };
      };
    };
  }