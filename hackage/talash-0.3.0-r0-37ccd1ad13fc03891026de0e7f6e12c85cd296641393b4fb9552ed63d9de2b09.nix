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
    flags = {};
    package = {
      specVersion = "2.4";
      identifier = { name = "talash"; version = "0.3.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "rahguzar@zohomail.eu";
      author = "Rahguzar";
      homepage = "https://github.com/aikrahguzar/talash";
      url = "";
      synopsis = "Line oriented fast enough text search";
      description = "\nThis library provides searching a large number of candidates against a query using a given style. Two styles are provided. The default\nis orderless style in which a match occurs if the words in the query all occur in the candidate regardless of the order of their occurrence.\nA fuzzy style is also provided in which a candidate matches if all the characters of the query occur in it in order.\n\nThere is also a TUI searcher\\/selector interface provided using a [brick](https:\\/\\/hackage.haskell.org\\/package\\/brick) app. Like an extremely\nbarebones version of @fzf@ and mostly intended to be a starting point that has to be configured according to the needs or else it can be embedded into other\napplications to provide a selection interface.\n\nThere is also a piped searcher\\/seeker provided in which searcher runs in the background and can be used by a seeker communicating with it using named\npipes.\n\nThe is also a demo executable for both the brick app and piped version that gets the candidates for the @stdin@. Use @talash help@ for usage information.\n\nSome care has been taken to make the searcher performant. The nice string matching interface provided by [alfred-margaret](https:\\/\\/hackage.haskell.org\\/package\\/alfred-margaret) is responsible for a\nbig part of the performance. While [vector-sized](https:\\/\\/hackage.haskell.org\\/package\\/vector-sized) is responsible for most of memory\nefficieny. Performance can potentially be further improved by using all the cores but it is good enough for my typical use cases of searching among\na few thousand or at most a few tens of thousands of candidates. As a result parallel matching is unlikely to be implemented.\n\nThe package is lightly maintained, bugs reports are welcome but any action on them will be slow. Patches are welcome for 1. bugfixes\n2. simple performance improvements 3. Adding mouse bindings to tui 4. New search styles, especially a better fuzzy one, that matches each word in\nthe query fuzzily but the words themselves can be matched in any order (I am not sure what is a sensible implementation of this).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."alfred-margaret" or (errorHandler.buildDepError "alfred-margaret"))
          (hsPkgs."bitvec" or (errorHandler.buildDepError "bitvec"))
          (hsPkgs."brick" or (errorHandler.buildDepError "brick"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."colorful-monoids" or (errorHandler.buildDepError "colorful-monoids"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          (hsPkgs."ghc-compact" or (errorHandler.buildDepError "ghc-compact"))
          (hsPkgs."io-streams" or (errorHandler.buildDepError "io-streams"))
          (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
          (hsPkgs."microlens-th" or (errorHandler.buildDepError "microlens-th"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."vector-algorithms" or (errorHandler.buildDepError "vector-algorithms"))
          (hsPkgs."vector-sized" or (errorHandler.buildDepError "vector-sized"))
          (hsPkgs."vector-th-unbox" or (errorHandler.buildDepError "vector-th-unbox"))
          (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
        ];
        buildable = true;
      };
      exes = {
        "talash" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."talash" or (errorHandler.buildDepError "talash"))
          ];
          buildable = true;
        };
      };
    };
  }