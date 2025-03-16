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
    flags = { homebrew = true; };
    package = {
      specVersion = "1.18";
      identifier = { name = "text-icu"; version = "0.8.0.5"; };
      license = "BSD-3-Clause";
      copyright = "2009-2015 Bryan O'Sullivan";
      maintainer = "Vladimir Shabanov <dev@vshabanov.com>";
      author = "";
      homepage = "https://github.com/haskell/text-icu";
      url = "";
      synopsis = "Bindings to the ICU library";
      description = "Haskell bindings to the International Components for Unicode (ICU)\nlibraries.  These libraries provide robust and full-featured Unicode\nservices on a wide variety of platforms.\n\nFeatures include:\n\n* Both pure and impure bindings, to allow for fine control over efficiency\nand ease of use.\n\n* Breaking of strings on character, word, sentence, and line boundaries.\n\n* Access to the Unicode Character Database (UCD) of character metadata.\n\n* String collation functions, for locales where the conventions for\nlexicographic ordering differ from the simple numeric ordering of\ncharacter codes.\n\n* Character set conversion functions, allowing conversion between\nUnicode and over 220 character encodings.\n\n* Unicode normalization.  (When implementations keep strings in a\nnormalized form, they can be assured that equivalent strings have a\nunique binary representation.)\n\n* Regular expression search and replace.\n\n* Security checks for visually confusable (spoofable) strings.\n\n* Bidirectional Unicode algorithm\n\n* Calendar objects holding dates and times.\n\n* Number and calendar formatting.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ];
        libs = [
          (pkgs."icuuc" or (errorHandler.sysDepError "icuuc"))
        ] ++ (if system.isWindows
          then [
            (pkgs."icuin" or (errorHandler.sysDepError "icuin"))
            (pkgs."icudt" or (errorHandler.sysDepError "icudt"))
            (pkgs."icuio" or (errorHandler.sysDepError "icuio"))
          ]
          else [
            (pkgs."icui18n" or (errorHandler.sysDepError "icui18n"))
            (pkgs."icudata" or (errorHandler.sysDepError "icudata"))
          ]);
        pkgconfig = [
          (pkgconfPkgs."icu-i18n" or (errorHandler.pkgConfDepError "icu-i18n"))
        ];
        buildable = true;
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."text-icu" or (errorHandler.buildDepError "text-icu"))
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.le "8.2") (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"));
          buildable = true;
        };
      };
    };
  }