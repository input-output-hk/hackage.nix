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
    flags = { old-syntactic = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "imperative-edsl"; version = "0.4.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright 2015 Anders Persson, Emil Axelsson, Markus Aronsson";
      maintainer = "emax@chalmers.se";
      author = "Anders Persson, Emil Axelsson, Markus Aronsson";
      homepage = "https://github.com/emilaxelsson/imperative-edsl";
      url = "";
      synopsis = "Deep embedding of imperative programs with code generation";
      description = "Deep embedding of imperative programs with code generation.\n\nThe main module for users who want to write imperative\nprograms is \"Language.Embedded.Imperative\" (and optionally\n\"Language.Embedded.Expr\" which provides a simple expression\nlanguage).\n\nExamples can be found in the @examples@ directory.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."exception-transformers" or (errorHandler.buildDepError "exception-transformers"))
          (hsPkgs."language-c-quote" or (errorHandler.buildDepError "language-c-quote"))
          (hsPkgs."mainland-pretty" or (errorHandler.buildDepError "mainland-pretty"))
          (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
          (hsPkgs."microlens-mtl" or (errorHandler.buildDepError "microlens-mtl"))
          (hsPkgs."microlens-th" or (errorHandler.buildDepError "microlens-th"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."operational-alacarte" or (errorHandler.buildDepError "operational-alacarte"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."BoundedChan" or (errorHandler.buildDepError "BoundedChan"))
          (hsPkgs."srcloc" or (errorHandler.buildDepError "srcloc"))
          ] ++ (if flags.old-syntactic
          then [
            (hsPkgs."syntactic" or (errorHandler.buildDepError "syntactic"))
            ]
          else [
            (hsPkgs."open-typerep" or (errorHandler.buildDepError "open-typerep"))
            (hsPkgs."syntactic" or (errorHandler.buildDepError "syntactic"))
            ]);
        buildable = true;
        };
      tests = {
        "Examples" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."imperative-edsl" or (errorHandler.buildDepError "imperative-edsl"))
            (hsPkgs."mainland-pretty" or (errorHandler.buildDepError "mainland-pretty"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            ];
          buildable = true;
          };
        "Semantics" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."imperative-edsl" or (errorHandler.buildDepError "imperative-edsl"))
            ];
          buildable = true;
          };
        };
      };
    }