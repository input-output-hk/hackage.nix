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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."either" or (errorHandler.buildDepError "either"))
          (hsPkgs."language-ecmascript" or (errorHandler.buildDepError "language-ecmascript"))
          (hsPkgs."digits" or (errorHandler.buildDepError "digits"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          ] ++ (pkgs.lib).optionals (flags.quickcheck) [
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."derive" or (errorHandler.buildDepError "derive"))
          ];
        buildable = true;
        };
      exes = {
        "infernu" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."infernu" or (errorHandler.buildDepError "infernu"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            ] ++ (pkgs.lib).optionals (flags.quickcheck) [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."derive" or (errorHandler.buildDepError "derive"))
            ];
          buildable = true;
          };
        "infernu-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."infernu" or (errorHandler.buildDepError "infernu"))
            ] ++ (pkgs.lib).optionals (flags.quickcheck) [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."derive" or (errorHandler.buildDepError "derive"))
            ];
          buildable = true;
          };
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."infernu" or (errorHandler.buildDepError "infernu"))
            ] ++ (pkgs.lib).optionals (flags.quickcheck) [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."derive" or (errorHandler.buildDepError "derive"))
            ];
          buildable = if flags.quickcheck then true else false;
          };
        };
      };
    }