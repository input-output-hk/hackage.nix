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
      specVersion = "1.10";
      identifier = { name = "language-ecmascript"; version = "0.15.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2007-2012 Brown University, (c) 2008-2010 Claudiu Saftoiu,\n(c) 2012-2013 Stevens Institute of Technology";
      maintainer = "Andrey Chudnov <oss@chudnov.com>";
      author = "Andrey Chudnov, Arjun Guha, Spiridon Aristides Eliopoulos,\nJoe Gibbs Politz, Claudiu Saftoiu";
      homepage = "http://github.com/jswebtools/language-ecmascript";
      url = "";
      synopsis = "JavaScript parser and pretty-printer library";
      description = "Tools for working with ECMAScript 3 (popularly known as JavaScript).\nIncludes a parser, pretty-printer, tools for working with source tree\nannotations and an arbitrary instance. Analyses have migrated to\nlanguage-ecmascript-analysis";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."uniplate" or (errorHandler.buildDepError "uniplate"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."Diff" or (errorHandler.buildDepError "Diff"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."Diff" or (errorHandler.buildDepError "Diff"))
            (hsPkgs."language-ecmascript" or (errorHandler.buildDepError "language-ecmascript"))
            ];
          buildable = true;
          };
        };
      };
    }