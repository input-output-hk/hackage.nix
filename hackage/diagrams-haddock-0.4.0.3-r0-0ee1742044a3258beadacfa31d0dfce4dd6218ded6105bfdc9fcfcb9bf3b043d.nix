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
      specVersion = "1.18";
      identifier = { name = "diagrams-haddock"; version = "0.4.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "diagrams-discuss@googlegroups.com";
      author = "Brent Yorgey";
      homepage = "http://projects.haskell.org/diagrams/";
      url = "";
      synopsis = "Preprocessor for embedding diagrams in Haddock documentation";
      description = "diagrams-haddock is a tool for compiling embedded inline\ndiagrams code in Haddock documentation, for an\neasy way to spice up your documentation with\ndiagrams.  Just create some diagrams code using\nspecial markup, run diagrams-haddock, and ensure\nthe resulting image files are installed along\nwith your documentation.  For complete\ndocumentation and examples, see\n<https://github.com/diagrams/diagrams-haddock/blob/master/README.md>.\n\nFor a good example of a package making use of\ndiagrams-haddock, see the diagrams-contrib\npackage\n(<http://hackage.haskell.org/package/diagrams%2Dcontrib>).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."strict" or (errorHandler.buildDepError "strict"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
          (hsPkgs."svg-builder" or (errorHandler.buildDepError "svg-builder"))
          (hsPkgs."diagrams-builder" or (errorHandler.buildDepError "diagrams-builder"))
          (hsPkgs."diagrams-lib" or (errorHandler.buildDepError "diagrams-lib"))
          (hsPkgs."diagrams-svg" or (errorHandler.buildDepError "diagrams-svg"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
          (hsPkgs."cpphs" or (errorHandler.buildDepError "cpphs"))
          (hsPkgs."cautious-file" or (errorHandler.buildDepError "cautious-file"))
          (hsPkgs."uniplate" or (errorHandler.buildDepError "uniplate"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
        ];
        buildable = true;
      };
      exes = {
        "diagrams-haddock" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."diagrams-haddock" or (errorHandler.buildDepError "diagrams-haddock"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."cpphs" or (errorHandler.buildDepError "cpphs"))
          ];
          buildable = true;
        };
      };
      tests = {
        "diagrams-haddock-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
            (hsPkgs."diagrams-haddock" or (errorHandler.buildDepError "diagrams-haddock"))
          ];
          buildable = true;
        };
      };
    };
  }