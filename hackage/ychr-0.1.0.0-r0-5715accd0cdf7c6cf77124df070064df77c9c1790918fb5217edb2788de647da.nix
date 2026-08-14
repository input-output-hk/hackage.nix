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
    flags = { examples = false; };
    package = {
      specVersion = "3.4";
      identifier = { name = "ychr"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2026 Lorenzo Tabacchini";
      maintainer = "lortabac@gmx.com";
      author = "Lorenzo Tabacchini";
      homepage = "https://github.com/lortabac/ychr";
      url = "";
      synopsis = "A Constraint Handling Rules compiler with multiple backends";
      description = "Constraint Handling Rules (CHR) is a declarative, rule-based language for\nwriting constraint solvers, type inferencers, and other rule-driven logic.\nA program is a set of rules that rewrite a multiset of constraints until no\nrule applies.\n\nYCHR compiles standard CHR — Prolog-compatible syntax, extended with\nErlang-style user-defined functions and an optional gradual type system —\nto a small abstract VM, which is either interpreted directly in Haskell or\ntranslated to Scheme.\n\n== Using YCHR as a Haskell library\n\nThe common compile-and-query path is available from a single import:\n\n> {-# LANGUAGE OverloadedStrings #-}\n> import YCHR\n>\n> main :: IO ()\n> main = do\n>   result <- compileFiles True [\"Order.chr\"]\n>   case result of\n>     Left err -> putStr (displayError err)\n>     Right (cp, _warnings) -> do\n>       r <- runQueryCompiled cp goal \"R\"\n>       print (r :: Either ConvertError Int)\n>   where goal = CompoundTerm (Unqualified \"compute\") [VarTerm \"R\"]\n\nCompile a @.chr@ module once, then feed it Haskell values and decode its\nanswers back through the @ToTerm@ \\/ @FromTerm@ bridge. Haskell functions\ncan be exposed to CHR programs as host calls, and programs can be built\nin Haskell directly with the @YCHR.DSL@ combinators instead of parsed\nfrom source.\n\nFor a worked example — a lambda-calculus type inferencer written in CHR\nand driven from Haskell — see the embedding guide:\n<https://github.com/lortabac/ychr/blob/master/docs/how-to/embed-a-chr-module.md>.\n\n== Status\n\nEarly release. The Haskell interpreter and the Scheme backend work; the\nJavaScript backend and most of the optimization catalogue are not yet\nimplemented. The @ychr@ command-line compiler and REPL ship with this\npackage. Compiling to Scheme additionally requires the runtime from a\nsource checkout. Full status in the roadmap:\n<https://github.com/lortabac/ychr/blob/master/docs/roadmap.md>.\n\nModules under @YCHR.Internal@ are implementation details, exposed for\ndocumentation purposes only, and are not covered by the package version\npolicy.\n\n== AI disclosure\n\nThis project has been developed with the help of large language models.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ] ++ pkgs.lib.optional (compiler.isGhc && true) (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"));
        buildable = true;
      };
      exes = {
        "ychr" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."ychr" or (errorHandler.buildDepError "ychr"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          ];
          buildable = true;
        };
        "stlc-typechecker" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."ychr" or (errorHandler.buildDepError "ychr"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
          buildable = if !flags.examples then false else true;
        };
      };
      tests = {
        "ychr-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."ychr" or (errorHandler.buildDepError "ychr"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hedgehog" or (errorHandler.buildDepError "tasty-hedgehog"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "ychr-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."ychr" or (errorHandler.buildDepError "ychr"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
          ];
          buildable = true;
        };
      };
    };
  }